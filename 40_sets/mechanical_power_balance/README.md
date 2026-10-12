---
type: brick_set
set_id: mechanical_power_balance
set_kind: topic
title: Mechanical power balances
summary: Local energy and power identities for forced impedance, elastic attachments, and variable-inertia manipulators.
bricks:
  - forced_impedance_balance
  - elastic_attachment_balance
  - manipulator_energy_balance
---
# Mechanical power balances

This set provides a reading path through three independent mechanical energy
interfaces. Each component states its own derivative, symmetry, kinematic,
and dissipation premises. Their membership in this set does not establish an
integrated passivity theorem or a robot/controller model.

## Included Bricks and reading path

| Brick | Purpose |
| --- | --- |
| [Forced impedance](../../30_bricks/forced_impedance_balance/interface.md) | Relate the derivative of a quadratic storage function to forcing power and damping. |
| [Elastic attachment](../../30_bricks/elastic_attachment_balance/interface.md) | Derive attachment storage and port-power cancellation under explicit relative-velocity kinematics. |
| [Variable-inertia manipulator](../../30_bricks/manipulator_energy_balance/interface.md) | Derive mechanical power balance using supplied path derivatives and the inertia/Coriolis skew identity. |

Start with the forced-impedance interface, then compare the additional
kinematics in the attachment and configuration dependence in the manipulator.
Each linked Brick owns its conventional proof and formal correspondence.

## Boundaries and open items

The set makes no new composition claim. Flow existence, integrated energy
estimates, application-model correspondence, and physical acceptance remain
separate obligations. Historical packaging and internal evidence records are
not part of this public navigation export.
