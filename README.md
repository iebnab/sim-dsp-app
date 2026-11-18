# sim-dsp-app

Synthetic test fixture. This repository simulates the application repository of a
fictional ad-tech demand-side platform. It holds no real code, no real data and no
secrets, and nothing here is deployed.

It exists so a read-only posture product can be tested against GitHub repository
settings it owns. This repository is the hardened variant:

- the default branch is protected: pull request required, one approving review,
  stale reviews dismissed, code-owner review required, the `build` check required
  and up to date, admins included, linear history, no force pushes or deletions;
- a tag ruleset protects `v*` release tags;
- the CI workflow pins every action by commit SHA, grants the token read-only
  `contents`, and verifies the scanner it downloads against a pinned SHA-256;
- deploys use short-lived OIDC credentials, never stored cloud keys.

The sibling repositories `sim-dsp-infra` (no protection) and `sim-dsp-sandbox`
(weak protection) are the other variants.
# test
