# bouch-web

Portable, evidence-tiered web design knowledge for Bouch web work. **Status:
promoted experimental, v0.1.0.**

This package is consumed alongside the [Bouch Web Workbench](https://github.com/paulieb89/bouch-web-workbench).
It carries design reasoning and a narrow typography Skill; the Workbench remains
the authoritative rendered-output instrument and release gate.

## What is included

- **Visual direction and anti-slop review** — state a thesis, establish tokens,
  render, inspect, and keep taste prompts separate from evidence gates.
- **Component and state patterns** — semantic HTML first, behaviour-bearing UI
  primitives when needed, and explicit coverage of interaction and approval states.
- **Reference-site research protocol** — study rendered principles without
  copying claims, assets, code, or distinctive artwork.
- **Font loading and verification** — authoritative source pins, licence review,
  self-hosting, fallback detection, rendered proof, and weight budgeting.
- **`bouch-web-typography` Skill** — a narrow procedure for typeface decisions
  and verification in a real web project.

## Evidence boundary

The package was promoted from the Bouch web-design lab's qualified fixture runs.
Those runs establish bounded Workbench and font-rendering evidence for the
recorded routes, states, browser and viewports. They do not select a final
typeface, prove production performance or licence suitability, cover every
browser, or establish that any visual direction is universally preferable.

Anti-pattern lists are review prompts, not automated gates. Human visual
judgement remains separate from deterministic checks. The package does not
include artwork, a design system, a production site, an MCP server, or a
claim that a mocked agentic state is live execution.

## Layout

```
bouch-web/
├── plugin.json
├── .claude-plugin/plugin.json
├── skills/bouch-web-typography/SKILL.md
├── references/                 # evidence-tiered design guidance
├── evidence/                   # provenance and qualification boundaries
├── scripts/validate-package.sh # offline package checks
├── LICENSE
└── README.md
```

## Use

For Claude Code, load the package for a session with:

```text
claude --plugin-dir /path/to/bouch-web
```

Other Agent Skills clients can point at `skills/` while retaining the package
tree so the relative references resolve. Use this knowledge with the Workbench;
it does not replace the Workbench's capture, accessibility, overflow, font,
request, console, calibration, or human screenshot-review loop.

## Qualification

Run the offline package checks with:

```text
scripts/validate-package.sh
```

See [`evidence/qualification.md`](evidence/qualification.md) for what v0.1.0
establishes and what remains open. See [`evidence/PROVENANCE.md`](evidence/PROVENANCE.md)
for source pins and rendered evidence boundaries.

## Licence

MIT. Third-party guidance is paraphrased and cited by source pin; third-party
fonts and artwork are not redistributed by this package.
