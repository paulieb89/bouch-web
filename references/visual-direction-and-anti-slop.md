# Visual direction and anti-slop

Status: promoted experimental. Tiers per [evidence-status.md](evidence-status.md).

## Method (T3)

1. State one visual thesis and one explicit anti-pattern list before styling.
2. Fix tokens first (colour, type, radius, spacing); pages consume tokens.
3. Render, look, then revise. Source and a green build are not visual evidence.
4. Give each image or asset a specific job; no decorative fill.
5. Check the same content with motion and imagery removed.

## What the vendors say (T2, cite don't copy)

From Enumeration Lab `skill-frontend-aesthetic-guidance` (pins in
[PROVENANCE.md](../evidence/PROVENANCE.md)):

- The Anthropic frontend-design skill is an aesthetic rulebook: it names clusters
  of "AI-generated design" to avoid and prescribes tokens, a review against the
  brief, then the build, with a quality floor (responsive, visible focus, reduced
  motion).
- Its only render-and-look instruction is optional screenshots.
- OpenAI's Codex prompt paraphrases the same lineage and adds a check on desktop
  and mobile, plus an exception that preserves an existing design system.
- Vendors drift and contradict one another; any adopted rule must be a deliberate pin.

## How this package treats such lists (T3)

- They are review prompts for a human or agent critique pass. They are **not**
  gates; encoding taste as a gate repeats the design checklist the Workbench
  deliberately left out (T2, record's interpretation).
- The project contract overrides vendor taste. Example: a vendor ban on system
  fonts does not bind a project that permits them.
- Ask of every choice: is it a decision for this brand, or a default this
  generation tends to produce? A default is not wrong, but it should be chosen.

## Bouch-specific boundaries (project records, sibling repo)

- Palette starts at charcoal / cream / orange; the visual plan says it is not
  sacred. Orange is fill/rule only in this lab (T3 on contrast).
- Direction C (dark chamber) stays out until a real asset exists.
- AI-authored artwork ownership is undecided; do not ship such artwork.

## Open (T4)

Whether a banned-pattern review improves human preference for Bouch pages is untested.
