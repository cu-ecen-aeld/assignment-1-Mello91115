#!/usr/bin/env bash
# Usage: writer.sh <writefile> <writestr>
set -euo pipefail
if [[ $# -ne 2 ]]; then
  echo "Error: Two arguments required: <writefile> <writestr>" >&2
  exit 1
fi
writefile=$1
writestr=$2
mkdir -p "$(dirname "$writefile")"
if ! printf "%s" "$writestr" > "$writefile"; then
  echo "Error: Could not write to $writefile" >&2
  exit 1
fi
