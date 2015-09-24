#!/bin/bash

shopt -s nullglob

FILES=$1
CLANG=${CLANG:="/usr/local/llvm/bin/clang++"}

for FILE in $FILES
do
  echo "Processing $FILE..."
  DEST="$FILE.html"
  vim -E +'TOhtml' +"w $DEST" +'q!' +'q!' -- "$FILE"
  ./tools/get_syntax_tag "$DEST"
  "$CLANG" --std=c++14 "$FILE" -o "$FILE.out" && "./$FILE.out" > "$FILE.output"
    #&& $CLANG --std=c++14 -O3 -S "$FILE" -o "$FILE.asm"
done
echo "done"

