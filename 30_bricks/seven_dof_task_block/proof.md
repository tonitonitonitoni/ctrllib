# Conventional proof: Seven-DOF operational task block algebra

This document is the authored conventional-derivation authority for `seven_dof_task_block`.

## Scope and provenance

This Generated Brick packages the finite block selectors and operational task-inertia identities in `SevenDofTaskBlock`. The block helpers support the two public outputs; they are not separate application claims.

## Definitions and notation

TaskIdx selects the task coordinates
$\{i:n\mid i\ne j\}$. The function taskBlock restricts a full
$n\times n$ matrix to those common row and column indices; it does not embed a
smaller matrix. The function taskRows restricts the rows to the same task
indices while retaining all columns. The operational matrix and encoded
inertia blocks have the exact finite dimensions in the module.

## Statement of result

Under the supplied inverse, row/column, and positivity premises, the encoded task inertia equals the operational inverse/congruence expression. It is symmetric and positive definite and satisfies the module's passivity identity.

## Assumptions

All finite dimensions, task index order, inverse identities, zero row/column
conditions, and positive-definiteness premises are explicit. The task block is
restriction algebra; physical actuator and source correspondence are external.

## Operational inertia identification

The selector helpers establish how taskBlock acts on vectors, transposes,
negates, and multiplies blocks. Apply these identities to the operational
matrix and encoded inertia. The captured products mhat_mul_operational and
operational_mul_mhat establish the full inverse relation from $G P=I$ and
$M M_{\mathrm{inv}}=I$, where $M_{\mathrm{inv}}$ is the named matrix input
Minv. Restricting the product to TaskIdx is valid because the
explicit self-motion column and row of $\hat M=P^\mathsf T M P$ vanish. The
congruence and nonredundant forms are equal only under their explicit inverse
pair and operational-identification premise
$G_bM_{b,\mathrm{inv}}G_b^\mathsf T=\Gamma M_{\mathrm{inv}}\Gamma^\mathsf T$.

## Task-block passivity

Transpose the identified expression to obtain symmetry. The task block of a
skew matrix is skew because restriction to a common index set commutes with
transpose and negation; hence its quadratic contribution vanishes. The
remaining terms are the encoded passivity identity. Positive definiteness
uses the declared $M\succ0$, the inverse witness $G P=I$, and the explicit
operational inverse relation, yielding the specialized endpoint.

## Formal correspondence

The manifest retains every selector/support declaration and selects only the two reusable operational outputs. Exact task order and dimensions are authoritative in `statements.md`.

## What the result establishes and does not

It establishes finite block algebra, operational identification, symmetry, positive definiteness, and the encoded passivity identity. It does not establish physical task selection, source-paper transcription, or controller behavior.

## Limitations and discrepancies

The exact task coordinate order is a model convention. Any application must prove the operational and source matrices have the declared dimensions and identities.

## Evidence record

The current declaration capture contains no `sorryAx`; ordinary labels are recorded. Acceptance is not claimed.

## Evidence record

The declaration inventory is drawn from the current Xylem capture. This packaging pass does not run Lean, establish source equivalence, or grant mathematical/scientific acceptance.
