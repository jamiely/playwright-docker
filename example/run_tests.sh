#!/usr/bin/env bash

set -ex

MYDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
SCREENSHOTS_DIR="$MYDIR/screenshots"

cd "$MYDIR"
echo "There should be NO screenshots"
test $(ls "$SCREENSHOTS_DIR"/*.png 2>/dev/null | wc -l) -eq 0

npm run example

echo "There should be 3 screenshots"
test $(ls "$SCREENSHOTS_DIR"/*.png | wc -l) -eq 3
