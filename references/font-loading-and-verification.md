# Font loading and verification

Status: promoted experimental. Tiers per [evidence-status.md](evidence-status.md).

## Procedure

1. **Obtain from an authoritative source** at a pinned revision (T1 in this pass:
   google/fonts commit `6c1dbe27…`). Keep the upstream `OFL.txt` and `METADATA.pb`
   beside the files.
2. **Check the licence from the shipped text**, not memory. OFL-1.1 permits web
   embedding and self-hosting; it is not legal advice (T3). Note any Reserved Font
   Name constraints before modifying or subsetting.
3. **Record** size and sha256 per file, axes, and which weights are used.
4. **Self-host** with `next/font/local` (T1: Next 16.2.6 accepted variable TTFs with
   `weight: "100 900"`-style ranges and emitted local `@font-face` with
   `font-display: swap`). No `next/font/google`, no CDN, no `<link>` to a font host.
5. **Scope loading.** Declare fonts in the route that uses them so preloads do not
   hit every route (T3).
6. **Fallback metrics.** For serifs set `adjustFontFallback: "Times New Roman"`;
   otherwise Next adjusts against Arial (T1 observed in built CSS).
7. **Prove rendering.** A font is "installed" only when it renders. Verify in the
   browser (computed `font-family` plus `document.fonts.check` / loaded status) and
   with the Web Workbench font gate. Until then label as pending. (Done for this lab
   in run `0002-341634a5`: all four faces rendered as web fonts at 375 and 1280,
   PROJECT-PROVEN, bounded to Chrome 145 and that export.)
8. **Weight budget.** Variable TTFs here are 70–876 KB. Convert to WOFF2 and/or
   subset to the needed Latin range before production. Reserved-name rules apply
   (T3: untested).

## Do not

- Name a family in CSS/UI whose file is absent (the Workbench gates this as fallback; T2).
- Treat "downloaded" or "built" as "rendered".
- Claim a font is chosen because it was obtained.

## Status for this lab

- Files obtained; shipped OFL notices read (SOURCE-BACKED). Only the notices were
  inspected: Reserved Font Name terms still need a deliberate production review.
- Rendering: PROJECT-PROVEN in run `0002-341634a5` (Workbench PASS; axe 0/0; no
  console, page or request errors; no overflow; Inter, Instrument Serif,
  Newsreader, Fraunces rendered as actual web fonts; manifest verified). Bounded
  to this lab, Chrome 145.0.7632.159, 375×812 and 1280×800, default state.
- Legibility of the comparison tiles: HUMAN REVIEW, not a machine gate.
- Selecting a display face: VERDICT PENDING. Rendering a face does not select it.
- Weight budget (70–876 KB unsubsetted TTFs) is still unresolved.
