# Evidence status

Package status: **promoted experimental, v0.1.0.**

## Tiers

| Tier | Meaning |
| --- | --- |
| T1 | Observed directly in this setup pass (file on disk, command output, built artifact). Not necessarily visual. |
| T2 | Inherited from an Enumeration Lab record marked DIRECTLY INSPECTED there. Re-read in this pass, not re-verified at source. Cited by pin. |
| T3 | Interpretation or working heuristic. Reasonable, untested here. |
| T4 | Unverified: a hypothesis or a pending check. |

Rendered-output evidence is a separate axis: **R0** none, **R1** inspected in a
browser by an agent, **R2** passed the Web Workbench, **R3** human-reviewed.
The setup pass reached **R0** for `/type-study`. Run `0002-341634a5` (2026-11-01)
then reached **R2** (Workbench PASS) with a human look at the tiles (**R3 for
legibility of the comparison only**). Later runs extend R2 to `/agentic` (rest,
approved, declined) and `/company` (rest); all on fixture content and experimental package evidence. Nothing in the package claims visual quality
as a machine result, and no typeface is selected.

### Run-level labels (used for the 0002 run)

| Label | Meaning | Maps to |
| --- | --- | --- |
| PROJECT-PROVEN | Observed in the running artifact; bounded to this lab and runtime | T1 + R2 |
| SOURCE-BACKED | Backed by upstream files/notices actually inspected | T1/T2 |
| HUMAN REVIEW | Human judgement of rendered output; not a machine gate | R3 |
| VERDICT PENDING | Human preference/selection not yet made | T4 |

## Claim groups

| Claim | Tier | Basis |
| --- | --- | --- |
| Instrument Serif, Newsreader, Fraunces and Inter are OFL-1.1 per shipped `OFL.txt` at google/fonts@6c1dbe2 | T1 | Files fetched; first lines of each `OFL.txt` read |
| `next/font/local` emitted self-hosted `@font-face` rules for all four files in the production build | T1 | `.next/static/chunks/*.css` inspected |
| The four faces actually render as web fonts at 375 and 1280 | T1, PROJECT-PROVEN (bounded: Chrome 145.0.7632.159, Playwright 1.63.0, this export, this Workbench) | `evidence/0002-341634a5` fonts.json: no failing stacks; fontFaces loaded |
| Workbench PASS; axe 0 violations / 0 incomplete; console, page errors, failed requests empty; no overflow, scrollWidth = viewport | T1, PROJECT-PROVEN (same bounds; default state only) | `evidence/0002-341634a5/summary.json`, manifest `sha256sum -c` OK |
| Tiles are legible and the three-column / stacked comparison is useful; Candidate A's wrapped metadata acceptable for an internal study | HUMAN REVIEW (R3), not a machine gate | Human review of tiles |
| OFL-1.1 notices shipped with the font files | SOURCE-BACKED | Only the shipped `OFL.txt` notices were inspected. Reserved Font Name terms need a deliberate production review before modifying, subsetting or converting for production |
| `/agentic` passes the Workbench at rest, approved and declined at 375 and 1280; `/company` passes at rest at both widths (fixture content) | T1, PROJECT-PROVEN (same bounds as above; those states only) | `bouch-site-ui-lab/evidence/variants/0002-b9d4c903`, `0003-b9d4c903`, `0006-agentic-states/0001-b9d4c903`; manifests OK |
| `/agentic` TabsList: Workbench `text-overflow` spill 0px horizontal / 11px vertical, `gate: false`, all states and widths; no visible defect on visual review | T1 (metric), HUMAN REVIEW (no visible defect); cause T4 | Same runs. Recorded, not suppressed |
| Which display face Bouch should use (Newsreader is only the lab's provisional default) | VERDICT PENDING | No selection made; the run is a comparison |
| Display body-text suitability of Instrument Serif | T4 | Hypothesis only; it is a display face |
| Vendor anti-slop guidance shares one lineage (Anthropic frontend-design, cookbook, Codex prompt) | T2 | Enumeration Lab `skill-frontend-aesthetic-guidance` |
| Screenshots are optional in vendor guidance; none mandates looking at rendered output | T2 | Same record |
| Vendor guidance contradicts itself over time (Inter recommended 2025, discouraged 2026) | T2 | Same record |
| Banned-pattern lists are taste, not evidence; do not encode as gates | T2 (record's own interpretation) | Same record |
| Naming an uninstalled font family is gated as fallback by the Workbench | T2 | Sibling BRIEF.md decision 8 (project record, not Enumeration Lab) |
| Orange `#f26a2e` on cream `#fff7eb` is about 2.8:1, unsuitable as text | T3 | Computed by hand, not by tool; verify with a checker |
| Inter variable file (856 KB) is too heavy for production without subsetting | T3 | Size observed (T1); the threshold is judgement |

## Not established

No human preference or selection data. No screen-reader or keyboard review beyond
axe. No performance trace or font-weight budget decision. Other browsers/OSes and
non-default states were not run. No production licence review. No evidence the
candidate order reflects quality. (Superseded: "No Workbench run on this lab" — see
run `0002-341634a5`.)
