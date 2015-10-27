#!/bin/bash

DIR="$( cd "$( dirname "$0" )" && pwd )"
cd "$DIR"

../compile.sh index.md _build/index.html html/head html/foot
cp -r img _build/


