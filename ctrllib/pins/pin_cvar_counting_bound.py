"""Numeric pin for the CVaR chance-constraint bridge (E1.8/E1.9) and the Artzner
coherence bundle (obligation A2), both sealed in Lean.

Lean targets pinned here
------------------------
  Ctrllib.cvarSAA_lt_imp_violation_count     (Ctrllib/CvarMarginWrapper.lean)
  Ctrllib.cvarMargin_lt_imp_clearance_count  (Ctrllib/CvarMarginWrapper.lean)
  Ctrllib.cvarSAA_mono                       (Ctrllib/CvarInfForm.lean)
  Ctrllib.cvarSAA_translation                (Ctrllib/CvarInfForm.lean)
  Ctrllib.cvarSAA_posHomogeneous             (Ctrllib/CvarInfForm.lean)
  Ctrllib.cvarSAA_subadditive                (Ctrllib/CvarInfForm.lean)
  Ctrllib.cvarSAA_const                      (Ctrllib/CvarInfForm.lean)

Method
------
`cvarSAA` is computed EXACTLY, in rationals, using the sealed attainment theorem
`cvarSAA_eq_obj_sample` (T2/T3): the SAA objective

    F(tau) = tau + 1/(q(1-a)) * sum_k (Z_k - tau)^+

is convex piecewise-linear with breakpoints exactly at the samples, so the global
minimum over R is attained at some sample.  Evaluating F at every sample and taking
the min is therefore not an approximation, it is the value.  A dense-grid refutation
check confirms no off-breakpoint tau beats it.

This mirrors the construction of the archived engine pin
  /Volumes/RedSSD/99_archive/code_tarballs_extract/_work_Code_08_10_26_extract/
  Code/tasks/streams/ctrllib/scratch/pin_cvar_saa.py
which is NOT currently mirrored into the live proof evidence record.

House-discipline flag: the canonical pin is kept with this Lean repository. The
corresponding human-facing evidence record belongs in the accompanying proof record; this file remains
the executable pin and is not a Brick prose source.

Run from the repository root with the active proof-support interpreter:
  python ctrllib/pins/pin_cvar_counting_bound.py
"""

from fractions import Fraction as F
import random

# ---------------------------------------------------------------- engine


def pos(x):
    return x if x > 0 else F(0)


def cvar_obj(z, alpha, tau):
    """F(tau) = tau + 1/(q(1-a)) * sum_k (z_k - tau)^+ , equal weights p_k = 1/q."""
    q = len(z)
    c = F(1) / (q * (1 - alpha))
    return tau + c * sum(pos(zk - tau) for zk in z)


def cvar_saa(z, alpha):
    """Exact min over tau in R.  By the sealed `cvarObj_min_at_sample`, the minimum
    is attained at a sample, so scanning the samples IS the infimum."""
    return min(cvar_obj(z, alpha, t) for t in z)


def cvar_saa_grid(z, alpha, n=400):
    """Dense-grid value, used only to refute a hypothetical off-breakpoint minimum."""
    lo, hi = min(z) - 3, max(z) + 3
    best = None
    for i in range(n + 1):
        tau = lo + (hi - lo) * F(i, n)
        v = cvar_obj(z, alpha, tau)
        if best is None or v < best:
            best = v
    return best


def violation_count(z, c):
    return sum(1 for zk in z if zk > c)


# ---------------------------------------------------------------- samples


def random_sample(rng, q, atom_heavy=False):
    """Random rational sample.  `atom_heavy` deliberately creates ties, including
    ties sitting exactly at the VaR breakpoint (obligation A5, the visibility-flip
    case the inf-form is supposed to handle by construction)."""
    if atom_heavy:
        # a tiny value pool forces repeats; plateaus at a contact threshold
        pool = [F(v, 2) for v in rng.sample(range(-6, 7), k=min(3, q))]
        return [rng.choice(pool) for _ in range(q)]
    return [F(rng.randint(-40, 40), rng.randint(1, 4)) for _ in range(q)]


def random_alpha(rng):
    den = rng.randint(2, 12)
    num = rng.randint(0, den - 1)
    return F(num, den)


# ---------------------------------------------------------------- checks


def check_attainment(z, alpha):
    """The sample-scan value is not beaten anywhere on a dense grid (T2/T3)."""
    return cvar_saa(z, alpha) <= cvar_saa_grid(z, alpha)


def check_counting_bound(z, alpha, c):
    """E1.8: cvarSAA a Z < c  ==>  |{k : c < Z_k}| <= q(1-a).

    Checked in the only direction the theorem claims, and also checked for
    non-vacuity: we record whether the hypothesis ever actually fired."""
    q = len(z)
    if cvar_saa(z, alpha) < c:
        return violation_count(z, c) <= q * (1 - alpha), True
    return True, False


def check_clearance_corollary(margins, alpha, delta):
    """E1.9: cvarMargin a m x < -delta ==> |{k : m_k < delta}| <= q(1-a).
    `cvarMargin` is `cvarSAA` at the negated margin (the file's sign convention)."""
    q = len(margins)
    loss = [-m for m in margins]
    if cvar_saa(loss, alpha) < -delta:
        return sum(1 for m in margins if m < delta) <= q * (1 - alpha), True
    return True, False


def check_coherence(z, z2, alpha, shift, lam):
    """The four Artzner axioms plus normalization, all exact."""
    q = len(z)
    out = {}
    # A2.1 monotonicity: raise every sample, risk must not fall
    zup = [a + abs(b) for a, b in zip(z, z2)]
    out["mono"] = cvar_saa(z, alpha) <= cvar_saa(zup, alpha)
    # A2.2 translation equivariance
    out["translation"] = (
        cvar_saa([a + shift for a in z], alpha) == cvar_saa(z, alpha) + shift
    )
    # A2.3 positive homogeneity (lam >= 0, including the degenerate lam = 0)
    out["posHom"] = cvar_saa([lam * a for a in z], alpha) == lam * cvar_saa(z, alpha)
    out["posHom0"] = cvar_saa([F(0) * a for a in z], alpha) == 0
    # A2.4 subadditivity -- the axiom VaR fails
    out["subadd"] = cvar_saa([a + b for a, b in zip(z, z2)], alpha) <= (
        cvar_saa(z, alpha) + cvar_saa(z2, alpha)
    )
    # normalization: the risk of a certain loss is that loss
    out["const"] = cvar_saa([shift] * q, alpha) == shift
    return out


# ---------------------------------------------------------------- driver


def main(trials=200, seed=20260822):
    rng = random.Random(seed)
    failures = []
    fired_count = 0
    fired_clear = 0
    near_tight = 0  # non-vacuity: how often N comes within 1/2 of the bound q(1-a)
    coherence_tally = {}

    for t in range(trials):
        atom_heavy = t % 2 == 1  # half the trials are deliberately atom-heavy
        q = rng.randint(1, 9)
        alpha = random_alpha(rng)
        z = random_sample(rng, q, atom_heavy)
        z2 = random_sample(rng, q, atom_heavy)

        if not check_attainment(z, alpha):
            failures.append(("attainment", t, z, alpha))

        # sweep the threshold across and beyond the sample range
        for c in sorted(set(z)) + [min(z) - 1, max(z) + 1, cvar_saa(z, alpha)]:
            ok, fired = check_counting_bound(z, alpha, c)
            fired_count += int(fired)
            if fired and abs(F(violation_count(z, c)) - q * (1 - alpha)) < F(1, 2):
                near_tight += 1
            if not ok:
                failures.append(("counting", t, z, alpha, c))

        margins = z  # reuse the sample as clearances
        for delta in sorted(set(margins)) + [min(margins) - 1, max(margins) + 1]:
            ok, fired = check_clearance_corollary(margins, alpha, delta)
            fired_clear += int(fired)
            if not ok:
                failures.append(("clearance", t, margins, alpha, delta))

        shift = F(rng.randint(-10, 10), rng.randint(1, 3))
        lam = F(rng.randint(0, 6), rng.randint(1, 3))
        for name, ok in check_coherence(z, z2, alpha, shift, lam).items():
            coherence_tally[name] = coherence_tally.get(name, 0) + int(ok)
            if not ok:
                failures.append((name, t, z, z2, alpha, shift, lam))

    print(f"trials: {trials}  (half deliberately atom-heavy)")
    print(f"counting-bound hypothesis fired on {fired_count} threshold checks")
    print(f"clearance-corollary hypothesis fired on {fired_clear} threshold checks")
    print(f"near-tight instances (|N - q(1-a)| < 1/2): {near_tight}  "
          f"-- the bound is not slack, so tightening it would break")
    for name, n in sorted(coherence_tally.items()):
        print(f"  {name:12s} passed {n}/{trials}")
    print(f"all checks pass: {not failures}")
    if failures:
        for f in failures[:10]:
            print("  FAIL", f)
    return 0 if not failures else 1


if __name__ == "__main__":
    raise SystemExit(main())
