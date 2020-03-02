#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
DIRNAME="$(dirname "${BASH_SOURCE[0]}" )"
TEST_LIST=$DIRNAME/tests.input

rm -f myfifo
mkfifo myfifo

# & is necessary to put this command to background
# Then the next command can be execute to be fed by myfifo
sed -n "0~3 p" "$TEST_LIST" > myfifo &

while read -r line; do
    echo "$line"
done < myfifo
