#!/bin/bash

# Put main main Markdown files into canonical syntax (in place!) with markdownfmt.

set -e -u -o pipefail

hash markdownfmt >/dev/null 2>&1 || {
  echo >&2 "markdownfmt missing: Install https://github.com/shurcooL/markdownfmt and re-run"
  exit 1
}

cd $(dirname $0)/..

markdownfmt -w README.md CONTRIBUTING.md
