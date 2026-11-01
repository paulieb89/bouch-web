#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

failures=0
pass() { printf '  ✔ %s\n' "$1"; }
fail() { printf '  ✘ %s\n' "$1"; failures=$((failures + 1)); }

echo '== Required package files =='
for path in plugin.json .claude-plugin/plugin.json LICENSE README.md \
  skills/bouch-web-typography/SKILL.md evidence/PROVENANCE.md \
  evidence/qualification.md references/evidence-status.md \
  scripts/validate-package.sh; do
  if [[ -f "$path" ]]; then pass "$path"; else fail "$path missing"; fi
done

echo '== JSON manifests and identity =='
if python3 - <<'PY'
import json
from pathlib import Path
root = json.loads(Path('plugin.json').read_text())
claude = json.loads(Path('.claude-plugin/plugin.json').read_text())
fields = ('name', 'version', 'description', 'author', 'license', 'keywords')
assert all(root.get(field) == claude.get(field) for field in fields), 'manifest identity differs'
assert root['name'] == 'bouch-web' and root['version'] == '0.1.0'
PY
then pass 'manifests parse and identity matches'; else fail 'manifest validation'; fi

echo '== Skill frontmatter =='
if python3 - <<'PY'
from pathlib import Path
text = Path('skills/bouch-web-typography/SKILL.md').read_text()
assert text.startswith('---\n') and '\n---\n' in text
front, _ = text.split('\n---\n', 1)
assert '\nname:' in front and '\ndescription:' in front
PY
then pass 'Skill has name and description'; else fail 'Skill frontmatter'; fi

echo '== Relative links and reference reachability =='
if python3 - <<'PY'
import re
from pathlib import Path
markdown = [p for p in Path('.').rglob('*.md') if '.git' not in p.parts]
bad = []
for path in markdown:
    for target in re.findall(r'\]\(([^)#\s]+)(?:#[^)]*)?\)', path.read_text()):
        if '://' in target or target.startswith('mailto:'):
            continue
        if not (path.parent / target).resolve().exists():
            bad.append(f'{path} -> {target}')
skill = Path('skills/bouch-web-typography/SKILL.md').read_text()
reachable = {Path(target).name for target in re.findall(r'\]\((\.\./\.\./references/[^)#\s]+)', skill)}
references = {p.name for p in Path('references').glob('*.md')}
bad.extend(f'references/{name} is not linked by the Skill' for name in sorted(references - reachable))
if bad:
    raise SystemExit('\n'.join(bad))
print(f'{len(markdown)} Markdown files and {len(references)} references checked')
PY
then pass 'relative links resolve and all references are reachable'; else fail 'link traversal'; fi

echo '== No machine-local paths =='
if python3 - <<'PY'
from pathlib import Path

tokens = ('/' + 'home' + '/', '/' + 'Users' + '/', '/' + 'tmp' + '/', '~' + '/.claude')
paths = [p for p in Path('.').rglob('*') if p.is_file() and '.git' not in p.parts and p.name != 'validate-package.sh']
hits = [(p, i, line) for p in paths for i, line in enumerate(p.read_text(errors='replace').splitlines(), 1)
        if any(token in line for token in tokens)]
if hits:
    for path, line_no, line in hits:
        print(f'{path}:{line_no}: {line}')
    raise SystemExit(1)
PY
then pass 'no machine-local paths found'; else fail 'machine-local paths found'; fi

if [[ "$failures" -eq 0 ]]; then
  echo 'validate-package: ALL CHECKS PASSED'
else
  echo "validate-package: FAILED ($failures check(s))"
  exit 1
fi
