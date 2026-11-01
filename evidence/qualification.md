# Qualification record: bouch-web v0.1.0

Date: 2026-11-01. Status: **promoted experimental**.

## What this release contains

This release promotes the portable knowledge package and its narrow
`bouch-web-typography` Skill. It does not promote a final typeface, a visual
style as objective truth, a production site, artwork, or an MCP server.

## Mechanical checks

The package validation script checks, offline:

- both Agent Plugins manifests exist, parse, and have matching identity fields;
- the expected Skill, references, evidence and licence files exist;
- relative Markdown links resolve;
- every reference is reachable from the Skill's explicit reference links;
- Skill frontmatter includes a name and discovery description; and
- package text contains no machine-local absolute paths.

The script is the repeatable package gate for this release. Agent Skills
schema validation and Claude plugin validation remain client/runtime checks and
are named separately when run.

## Evidence carried into the package

The Bouch web-design lab Workbench runs establish, within their recorded
Chrome, Node, Playwright, axe, export and viewport bounds, that the documented
font-loading comparison and the recorded fixture routes/states can pass the
Workbench. The provenance file names the runs, hashes, source pins and
unresolved findings.

The evidence does not establish a final font choice, a production licence
review, performance budgets, other browsers or devices, keyboard and
screen-reader review beyond axe, or a preference ranking between visual
directions. The known non-gating TabsList metric remains recorded rather than
silently suppressed.

## Not run or not claimed

- No paid activation eval is claimed for v0.1.0.
- No production consumer is claimed from fixture content alone.
- No external reference-site crawl or authenticated research is included.
- No runtime MCP dependency is required or bundled.
- No font is called selected merely because it rendered successfully.

Promotion therefore means the package is a discoverable, portable experimental
knowledge capability with explicit evidence boundaries. It does not turn the
open questions into release gates or facts.
