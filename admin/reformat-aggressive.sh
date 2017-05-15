#!/bin/bash

# Put main main Markdown files into canonical syntax (in place!) with markdownfmt.
# XXX This is aggressive so we haven't been running. See also 
# https://github.com/shurcooL/markdownfmt/issues?utf8=%E2%9C%93&q=is%3Aopen%20author%3Ajlevy%20

set -e -u -o pipefail

hash markdownfmt >/dev/null 2>&1 || {
  echo >&2 "markdownfmt missing: Install https://github.com/shurcooL/markdownfmt and re-run"
  exit 1
}

cd $(dirname $0)/..

markdownfmt -w README.md CONTRIBUTING.md
