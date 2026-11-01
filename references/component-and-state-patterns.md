# Component and state patterns

Status: promoted experimental. Mostly T3: working policy from this lab's setup, not tested at scale.

## Component policy (T3)

- Prefer platform and semantic HTML first. Add a shadcn/ui component (Radix
  primitives) only when a route needs behaviour the platform lacks: dialog,
  popover, tabs, accessible select.
- Add components one at a time with the CLI; style through tokens, not per-use overrides.
- Lucide icons, `aria-hidden` when decorative; icon-only controls need an accessible name.
- Links that look like buttons stay `<a>` (`Button asChild`), so mailto and navigation semantics hold.
- In a static export, Next `Link` should set `prefetch={false}` (T2-equivalent
  project record: sibling BRIEF.md decision 9; applies to export builds, not
  verified for this non-export lab).

## State coverage checklist (T3)

For each interactive surface, decide and show: rest, hover, keyboard focus,
active/pressed, disabled, loading, empty, error, and (for approval flows)
pending-approval / approved / rejected. Provide a reduced-motion and a
no-JavaScript behaviour. Record which states were actually captured; do not
claim states that were only coded.

## Agentic-run surface (T4, future `/agentic`)

Hypotheses to test, not rules: a run is a sequence of steps with evidence
attached; approval points are first-class states; time and ordering are
unambiguous; nothing implies live execution when data is mocked, and mocked
data is labelled as such.

## Verification mapping (T2/T3)

Deterministic: build, lint, types. Exploratory: next-devtools + one browser MCP.
Accessibility: an independent scanner is an opinion, not a gate. Release: Web Workbench.
