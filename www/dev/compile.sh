#!/bin/bash

mkdir -p _build

python -m markdown  -x markdown.extensions.toc index.md | cat html/head - html/foot > _build/index.html


