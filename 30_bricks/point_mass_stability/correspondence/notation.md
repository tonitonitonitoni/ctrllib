# Notation map

| Symbol | Type and dimension | Lean name |
| --- | --- | --- |
| $z=(v,x)$ | Euclidean product, dimension six | `PointMassState` |
| $m,d,k$ | Positive real scalars | Parameters and hypotheses `hm`, `hd`, `hk` |
| $\Phi$ | Real-time flow on the state | `pointMassFlow m d k hm` |
| $V$ | Real-valued quadratic energy | `pointMassEnergy m k` |

Frame: the single Euclidean coordinate space of the ideal model; no robot
frame transform is encoded. Sign: both damping and restoring terms enter
acceleration negatively. Units: Lean uses real scalars without a dimensioned
quantity type; physical units and their consistent scaling remain an
application responsibility. Formal dimension is fixed by the existing state.
