#!/bin/bash


SOURCE="${BASH_SOURCE[0]}"
DIRNAME="$(dirname "${BASH_SOURCE[0]}" )"
TEST_LIST=$DIRNAME/tests.input

while read -r line; do
  echo "Got $line"
done < <(sed -n "0~3 p" "$TEST_LIST")
# <( <LIST> )is "process substitution": a form of redirection where the input
# or output of a process (some sequence of commands) appear as a temporary file

# Output 0, 3, 6 ... lines
