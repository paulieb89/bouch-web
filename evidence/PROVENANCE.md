# Provenance

Status: promoted experimental, v0.1.0. Dates are 2026-11-01 unless stated.

## Fonts (T1: fetched and read in the setup pass)

Source: `https://github.com/google/fonts`, commit
`6c1dbe27dcf7d817d4b62cec033ba77fa8e2a5ec` (commit date 2026-10-30T14:03:29Z),
path `ofl/<family>/`. Stored in `bouch-site-ui-lab/app/fonts/`.

| Family | File | Bytes | sha256 | Copyright line (from OFL.txt) | Upstream |
| --- | --- | --- | --- | --- | --- |
| Instrument Serif | InstrumentSerif-Regular.ttf | 70012 | 498efd461f6ddfcb7a111bf9a565709d2085d48201d501ead960d93e84ffbb88 | 2022 The Instrument Serif Project Authors | github.com/Instrument/instrument-serif |
| Newsreader | Newsreader[opsz,wght].ttf → Newsreader.ttf | 451664 | 8a08d13f8a6c0d51be379a60af84f945f65369a67e509ee3c3bdcc421254d7c1 | 2020 The Newsreader Project Authors | github.com/productiontype/Newsreader |
| Fraunces | Fraunces[SOFT,WONK,opsz,wght].ttf → Fraunces.ttf | 360440 | 177ff6c0f14e5550a3c624247cd1189611d4eb65d000b14944c63d967958abbb | 2018 The Fraunces Project Authors | github.com/undercasetype/Fraunces |
| Inter | Inter[opsz,wght].ttf → Inter.ttf | 876576 | 29160a80ff49ddcab2c97711247e08b1fab27a484a329ce8b813d820dc559031 | 2020 The Inter Project Authors | github.com/rsms/inter |

Licence: all four `OFL.txt` begin "licensed under the SIL Open Font License, Version
1.1". Italic files were not downloaded. Files were renamed locally (brackets removed).

## Inherited guidance (T2)

Enumeration Lab record `sources/records/skill-frontend-aesthetic-guidance.md`
(status ENUMERATED, inspected 2026-09-19). Upstream pins stated there:
anthropics/skills `34040c9c…` (frontend-design last changed `41bbe19d1a1a`,
2026-09-03); anthropics/claude-cookbooks `6b671ef6`; openai/codex `78245b47`
(prompt file `87f7226cca12`); openai-cookbook gpt-5 notebooks `7379810d0158`;
vercel-labs/agent-skills `063bee94` with web-interface-guidelines `e3d624ba`.
Licences per that record: frontend-design Apache-2.0; claude-cookbooks MIT;
openai/codex Apache-2.0; openai-cookbook MIT; agent-skills MIT. This package did
not re-inspect those upstreams.

## Project contracts read (context)

`bouch-site-experiment`: AGENTS.md, BRIEF.md, design/VISUAL-PRODUCTION-PLAN.md,
design/PRODUCTION-HERO-BRIEF.md, app/page.tsx (approved copy). `webness`: AGENTS.md,
MCP-SMOKE-2026-10-31.md (smoke only, not qualification). `agent-enumeration-lab`:
domains/web-dev/README.md.

## Rendered verification (PROJECT-PROVEN, bounded)

Run `bouch-site-ui-lab/evidence/0002-341634a5`, created 2026-11-01T20:30:51Z.
Source: static export `out/` → `/type-study.html`, sha256
`341634a58906b59df5eb0151e146d850fd927d19be14f468f63e787988feea79`. Browser Chrome
145.0.7632.159; Node v24.17.0; Playwright 1.63.0; axe 4.13.0; viewports 375×812 and
1280×800. Result: Workbench PASS, `findings: []`. The run's `manifest.sha256` was
checked with `sha256sum -c` (all OK). Exported font binaries in `out/` hash to the
same sha256 values listed above. Run `0001-ca93c857` recorded `pass: false` and is
not relied on. Bounded to this lab, runtime and default state.

Human review of the tiles (legible; mobile stacks; Candidate A wrapped metadata
acceptable for an internal study) is HUMAN REVIEW, not a machine gate. Font
selection is VERDICT PENDING. Licence status remains SOURCE-BACKED on the shipped
OFL notices only; Reserved Font Name terms need a deliberate production review.

## Route qualification runs (PROJECT-PROVEN, bounded; candidate, fixture content)

Same Chrome/Node/Playwright/axe and viewports as above; source export sha256
`b9d4c903cc265fb9d129b87ea533fdaf3177c9b6fc40149270bbeab10237de4a`; each
`manifest.sha256` checked with `sha256sum -c` (all OK). All `pass: true`.

| Run (under `bouch-site-ui-lab/evidence/`) | Page | Scope | Findings |
| --- | --- | --- | --- |
| `variants/0002-b9d4c903` | `/agentic.html` | rest | 1 non-gating: TabsList `text-overflow` spill dx 0 / dy 11 |
| `variants/0003-b9d4c903` | `/company.html` | rest | none |
| `variants/0006-agentic-states/0001-b9d4c903` | `/agentic.html` | rest, approved, declined | same non-gating TabsList finding in each state |

No visible defect on visual review of the TabsList finding; cause not isolated.
Newsreader is the lab's provisional display face only; no font choice promoted.
The lab evidence was not a Core/Registry promotion; the later package promotion
is separate. Two attempted upstream MCP categories were
intentionally not needed (browser capability already provided by the Workbench /
Claude workflow; no runtime gap demonstrated).

## Not captured

Other browsers/devices, non-default states, keyboard/screen-reader review beyond
axe, performance traces, human preference data, production licence review.
