#!/usr/bin/env bash
set -euo pipefail

FILES=$(mktemp)
find "$2" -type f \
    -iname \*.c -o \
    -iname \*.c++ -o \
    -iname \*.cc -o \
    -iname \*.cpp -o \
    -iname \*.cxx -o \
    -iname \*.h -o \
    -iname \*.h++ -o \
    -iname \*.hh -o \
    -iname \*.hpp -o \
    -iname \*.hxx > "${FILES}"

EXIT=0
TOOL="$1"
shift
shift

case "${TOOL}" in
format)
    xargs clang-format -i "$@" < "${FILES}"
    ;;
format-check)
    while read -r file; do
        if ! clang-format "$@" "${file}" | colordiff -u "${file}" -; then
            EXIT=1
        fi
    done < "${FILES}"
    ;;
esac

exit "${EXIT}"
