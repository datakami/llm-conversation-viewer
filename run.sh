#!/usr/bin/env bash
set -euo pipefail
uv run --with datasette  --with py-gfm --with datasette-template-sql --with datasette-render-markdown datasette --template-dir $PWD/templates $(llm logs path) "$@"
