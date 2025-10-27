

set -eu

if [ $# -ne 2 ]; then
  echo "Usage: $0 <writefile> <writestr>" >&2
  exit 1
fi

writefile=$1
writestr=$2

mkdir -p "$(dirname "$writefile")"

if ! printf "%s" "$writestr" > "$writefile"; then
  echo "Error: could not write to $writefile" >&2
  exit 1
fi
