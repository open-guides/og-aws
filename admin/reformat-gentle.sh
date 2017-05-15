#!/bin/bash

# Gently fix common Markdown formatting errors. Should be minimally invasive.

set -e -u -o pipefail

hash repren >/dev/null 2>&1 || {
  echo >&2 "repren missing: Install https://github.com/jlevy/repren and re-run"
  exit 1
}

cd $(dirname $0)/..

# Extra spaces following a bullet replaced by tab per mkdownfmt convention.
# Leave other stuff alone.
repren --from '^(\s*)([-*])(\s*  +\s*)' --to '\1\2\t' README.md CONTRIBUTING.md
