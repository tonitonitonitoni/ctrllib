# Interface — König kinetic-energy decomposition

This reader page summarizes the authored interface metadata for this Brick.
Authored summaries are not automatic semantic translations. The exact
captured statement is the authority for Lean binders and assumptions; see
[the statement appendix](correspondence/statements.md) and [the conventional proof](proof.md).

**Level:** Atomic.
**Level rationale:** One reusable mathematical interface, with its defining identity and immediate consequences.

## Evidence and dependencies


## Inputs

- A real inner-product space E, a finite index set S, real weights m_i, and vectors v, v_prime, w_i, w_prime_i in E.

## Assumptions

- $\sum_{i\in S}m_iw_i=0$; the polarized identity also requires $\sum_{i\in S}m_iw_i^\prime=0$.
- The weights are arbitrary reals. Positivity, nonzero total mass and finite-dimensionality of E are not required for these algebraic identities.

## Outputs

### Cross term

$\sum_i m_i\langle v,w_i\rangle=0$ for a balanced relative field.

Exact declarations: `Ctrllib.com_cross_term_zero`.
Proof section: [Cancellation of the cross term](proof.md#cancellation-of-the-cross-term).

### Polarized split

$\sum_i m_i\langle v+w_i,v^\prime+w_i^\prime\rangle=(\sum_i m_i)\langle v,v^\prime\rangle+\sum_i m_i\langle w_i,w_i^\prime\rangle$.

Exact declarations: `Ctrllib.koenig_inertia_bilinear`.
Proof section: [Polarized decomposition](proof.md#polarized-decomposition).

### Kinetic split

$\sum_i m_i\|v+w_i\|^2=(\sum_i m_i)\|v\|^2+\sum_i m_i\|w_i\|^2$; multiplying by one half gives the energy split.

Exact declarations: `Ctrllib.koenig_kinetic_split`, `Ctrllib.koenig_energy_split`.
Proof section: [Kinetic and energy forms](proof.md#kinetic-and-energy-forms).

## Composition

- No authored composition is recorded.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
