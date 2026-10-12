# Interface — Elastic attachment energy balance

This reader page summarizes the authored interface metadata for this Brick.
Authored summaries are not automatic semantic translations. The exact
captured statement is the authority for Lean binders and assumptions; see
[the statement appendix](correspondence/statements.md) and [the conventional proof](proof.md).

**Level:** Atomic.
**Level rationale:** The outputs form one reusable elastic attachment energy balance boundary under explicit theorem premises.

## Evidence and dependencies


## Inputs

- The typed matrices, vectors, states, trajectories, parameters, and hypotheses in the canonical module signatures.

## Assumptions

- Every dimension, algebraic structure, positivity, rank, differentiability, passivity, and compactness premise used by an endpoint is explicit.
- Application correspondence and numerical or physical evidence are external interfaces.

## Outputs

### Port cancellation

Attachment force and deformation power cancel between the two ports.

Exact declarations: `Ctrllib.attachment_port_power_cancel`.
Proof section: [Port cancellation](proof.md#port-cancellation).

### Attachment storage

The attachment storage derivative equals the declared internal port power.

Exact declarations: `Ctrllib.attachmentStorage_hasDerivAt`.
Proof section: [Port cancellation](proof.md#port-cancellation).

### Total balance

The lumped plus attachment total energy has the supplied external-power balance.

Exact declarations: `Ctrllib.elasticAttachment_total_balance`.
Proof section: [Total balance and bound](proof.md#total-balance-and-bound).

### External power bound

Nonnegative damping bounds total derivative by external power.

Exact declarations: `Ctrllib.elasticAttachment_total_deriv_le_external`.
Proof section: [Total balance and bound](proof.md#total-balance-and-bound).

### Storage nonnegative

Positive semidefinite attachment stiffness makes attachment storage nonnegative.

Exact declarations: `Ctrllib.attachmentStorage_nonneg`.
Proof section: [Total balance and bound](proof.md#total-balance-and-bound).

## Composition

- No authored composition is recorded.

## Exact correspondence

The statement appendix retains every captured binder and endpoint. Unsupported
notation remains in exact Lean text with its reason; generation does not run
Lean or certify source equivalence.
