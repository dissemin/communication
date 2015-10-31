#!/bin/bash

set -e

DIR="$( cd "$( dirname "$0" )" && pwd )"
cd "$DIR"

mkdir -p _build/
cp -r css _build/css

for lang in fr en; do
    IN="index.${lang}.md"
    OUT="_build/index.html.${lang}"
    HEAD="html/$lang/head"
    FOOT="html/$lang/foot"
    # if this fails, set -e ensure that we will fail
    ../compile_one "$IN" "$OUT" "$HEAD" "$FOOT"
done


