#!/bin/bash

DIR="$( cd "$( dirname "$0" )" && pwd )"
cd "$DIR"

for lang in fr en; do
    IN="index.${lang}.md"
    OUT="_build/index.html.${lang}"
    HEAD="html/$lang/head"
    FOOT="html/$lang/foot"
    ../compile_one "$IN" "$OUT" "$HEAD" "$FOOT" || {
      echo "error"
      # TODO: do this when we are sure about how the hook behaves
      # exit 1;
    }
done


