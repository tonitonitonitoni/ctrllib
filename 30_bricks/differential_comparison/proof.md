# Conventional derivation

## Scalar comparison

Let $a>0$. For a continuous $v$ with right derivative $v'$ satisfying
$v'(t)\le-av(t)+c$ on $[t_0,T]$, Mathlib's integrating-factor
comparison theorem gives

$$
v(t)\le v(t_0)e^{-a(t-t_0)}
       +\frac{c}{-a}\bigl(e^{-a(t-t_0)}-1\bigr).
$$

This is the comparison_shift endpoint. If $\varepsilon(t)\to0$, choose a
later start time at which $\varepsilon(t)\le a\delta/2$, using $a>0$.
The transient tends to zero and the remaining floor is below $\delta$,
proving comparison_tendsto_zero when $v\ge0$. If
$\varepsilon(t)\le M$, $M\ge0$, and $v(0)\ge0$, the same expression is
bounded by $v(0)+M/a$, proving comparison_bounded.

## Eventual disturbance floor

Let $a>0$ and $M\ge0$. Suppose $v:[0,\infty)\to\mathbb R$ is
continuous and has the right-derivative witnesses used by scalar comparison,
with $v'(t)\le-av(t)+M$. No sign assumption on $v(0)$ is needed for this
upper bound. For every $t\ge0$, apply the restartable comparison on $[0,t]$:

$$
v(t)\le v(0)e^{-at}+\frac{M}{a}(1-e^{-at})
     \le v(0)e^{-at}+\frac{M}{a}.
$$

The second inequality follows from $M/a\ge0$ and $e^{-at}>0$.
Since $a>0$, the transient $v(0)e^{-at}$ tends to zero, including when
$v(0)$ is negative. Given $\varepsilon>0$, choose $T\ge0$ such that
$v(0)e^{-at}<\varepsilon$ for every $t\ge T$. Then

$$
\forall t\ge T,\qquad v(t)\le M/a+\varepsilon.
$$

This is `Ctrllib.comparison_eventual_floor`. The original atlas contract,
which also assumes $v(0)\ge0$, follows immediately. The result removes the
initial transient from an eventual upper bound; it does not assert that
$v$ converges to $M/a$, or that a physical trajectory supplies the premises.

## Lyapunov transport

Applying the scalar result to $t\mapsto V(x(t))$, with the chain rule
supplied by the derivative and solution hypotheses, gives lyapunov_comparison.
Setting $\varepsilon=0$ yields
$V(x(t))\le V(x(0))e^{-at}$. For nonzero $\varepsilon$, rearranging the
Grönwall term gives

$$
V(x(t))\le V(x(0))e^{-at}
       +\frac{\varepsilon}{a}\bigl(1-e^{-at}\bigr).
$$

If $c_1\|x\|^2\le V(x)\le c_2\|x\|^2$, multiply the upper bound at time zero
by the nonnegative exponential and use the lower bound at time $t$. This is
the stated squared-state estimate.

The Dini form uses the same scalar comparison theorem with a liminf right-slope
premise. The class-$\mathcal{K}$ sandwich forms the chain

$$
\alpha_1\bigl(\|x(t)\|\bigr)\le V(x(t))\le V(x(t_0))
 \le\alpha_2\bigl(\|x(t_0)\|\bigr).
$$

Applying the monotone ray inverse of $\alpha_1$ gives the stated norm bound.

## Dini and class-K forms

The Dini endpoint replaces the pointwise derivative by a liminf right-slope
condition and applies the same integrating-factor comparison. For a class-K
sandwich, monotonicity on the nonnegative ray gives
$\alpha_1(\|x(t)\|)\le\alpha_2(\|x(t_0)\|)$. Applying the ray inverse of
$\alpha_1$ yields the norm estimate recorded in the manifest.
