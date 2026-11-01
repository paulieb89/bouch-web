---
name: bouch-web-typography
description: Select, license-check, self-host and verify web typefaces for Bouch web work. Use when a page needs a display or UI font decision, a font is being added to a Next.js project, or a font name appears in CSS or copy. Not for general visual design.
metadata:
  status: promoted-experimental
  evidence: see ../../references/evidence-status.md
---

# Bouch web typography

Narrow procedure for typeface work. Evidence tiers T1–T4 and R0–R3 are defined in
`../../references/evidence-status.md`. This skill has been exercised in the
`bouch-site-ui-lab` setup pass (R0) and verified once against run `0002-341634a5`
(2026-11-01). It remains bounded by those evidence limits.

## Evidence status (run `0002-341634a5`)

- **Font loading and fallback detection: PROJECT-PROVEN** for this lab and
  runtime (Chrome 145.0.7632.159, Playwright 1.63.0, this static export, the
  Workbench) at the two tested viewports, 375px and 1280px. In both,
  `fonts.json` shows each of the four stacks rendering its web font with no
  failing stacks.
- **Actual typeface selection: VERDICT PENDING.** The run is a comparison. No
  face is chosen. Newsreader is only the lab's *provisional* display default; no
  final choice has been promoted.
- **Licence: SOURCE-BACKED from the shipped OFL notices only.** Reserved Font
  Name terms still need a production review before modifying, subsetting or
  converting.
- **Scope:** nothing here is generalised to every browser or project.
- **Evidence limits:** default state only (no interaction states), no
  screen-reader review, no performance qualification.

## Procedure

1. Read the project contract (AGENTS.md / BRIEF). Palette, copy and font rules there win.
2. Pick candidates for a stated role (display, text, UI). Do not name a face in
   UI or CSS until its file is present.
3. Obtain files from an authoritative source at a pinned revision. Keep `OFL.txt`
   (or the actual licence) beside them; read it. Record size and sha256.
4. Self-host (`next/font/local` in Next). No remote font hosts at runtime.
   Load in the route that needs it. Set `adjustFontFallback` to a matching generic metric.
5. Render the same approved copy in every candidate: heading, body, control. Use a
   separate UI face for controls/labels only.
6. Inspect rendered output at 375px and 1280px. Confirm each face actually
   renders (computed family and loaded status). Then run the Web Workbench font gate.
7. Report obtained / licensed / rendered / selected as four separate statuses.
   Selection is a human decision.
8. Before production, plan weight reduction (WOFF2, subset). Check Reserved Font
   Name terms before modifying.

## Never

- Treat "built" as "rendered" or "obtained" as "chosen".
- Copy vendor taste lists into gates.
- Invent Bouch copy to fill a specimen.

## References

- [`../../references/font-loading-and-verification.md`](../../references/font-loading-and-verification.md)
- [`../../evidence/PROVENANCE.md`](../../evidence/PROVENANCE.md)

For the wider package guidance, also see:

- [`../../references/evidence-status.md`](../../references/evidence-status.md)
- [`../../references/visual-direction-and-anti-slop.md`](../../references/visual-direction-and-anti-slop.md)
- [`../../references/component-and-state-patterns.md`](../../references/component-and-state-patterns.md)
- [`../../references/reference-site-research-protocol.md`](../../references/reference-site-research-protocol.md)
