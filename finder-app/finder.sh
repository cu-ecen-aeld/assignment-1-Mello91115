#!/usr/bin/env bash
# Usage: finder.sh <filesdir> <searchstr>
set -euo pipefail
if [[ $# -ne 2 ]]; then
  echo "Error: Two arguments required: <filesdir> <searchstr>" >&2
  exit 1
fi
filesdir=$1
searchstr=$2
if [[ ! -d "$filesdir" ]]; then
  echo "Error: $filesdir is not a directory" >&2
  exit 1
fi
num_files=$(find "$filesdir" -type f | wc -l)
num_matches=$(grep -R -n --binary-files=without-match "$searchstr" "$filesdir" 2>/dev/null | wc -l)
echo "The number of files are $num_files and the number of matching lines are $num_matches"
