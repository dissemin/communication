#!/bin/bash

mkdir -p _build

for lang in fr en; do
    echo "Compiling in $lang"
    python -m markdown  -x markdown.extensions.toc index.$lang.md | cat html/$lang/head - html/$lang/foot > _build/index.$lang.html
done;


