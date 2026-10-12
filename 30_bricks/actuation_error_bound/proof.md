# Conventional derivation

## Scalar actuation ceiling

Assume $v'(t)\le-av(t)+\bar\varepsilon$, $a>0$,
$v(0)\ge0$, and a disturbance bounded by
$0\le\varepsilon(t)\le\bar\varepsilon$. The bounded-disturbance comparison
endpoint gives

$$
v(t)\le v(0)e^{-at}
       +\frac{\bar\varepsilon}{a}\bigl(1-e^{-at}\bigr)
       \le v(0)+\frac{\bar\varepsilon}{a}
$$

for every $t\ge0$. This is a uniform forward-time bound and retains
dependence on $v(0)$.

## State residual bound

Apply the scalar result to $v(t)=V(x(t))$. The lower sandwich gives
$c_1\|x(t)\|^2\le V(x(t))$, while the upper sandwich at time zero gives
$V(x(0))\le c_2\|x(0)\|^2$. Combining these inequalities with the scalar
bound yields

$$
c_1\|x(t)\|^2
\le c_2\|x(0)\|^2+\frac{\bar\varepsilon}{a}.
$$

No division by $c_1$ is needed in the public statement. The result is a
uniform bound depending on the initial state; it does not by itself assert a
limsup bound independent of that state.
