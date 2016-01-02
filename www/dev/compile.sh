#!/bin/bash

DIR="$( cd "$( dirname "$0" )" && pwd )"
cd "$DIR"

set -e

MDFILES=`ls . | grep -E ".md$"`

for mdfile in $MDFILES; do
    bname=`basename -s .md $mdfile`
    ../compile_one $mdfile  _build/${bname}.html html/head html/foot
done

cp -r img _build/


