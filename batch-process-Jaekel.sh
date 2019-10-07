#! /bin/sh 
for f in "$1"/*; do
  if [ -f "$f" ]; then
    FILE_NAME="$(basename "${f}")"
    WORDCOUNT="$(wc -w "${f}" | cut -d' ' -f1)"
    FILE_SIZE="$(du -sh "${f}" | cut -f1)"
    echo "Processing $f file..."
    echo "File Size: $FILE_SIZE"
    echo "Word count: $WORDCOUNT"
  fi
done

