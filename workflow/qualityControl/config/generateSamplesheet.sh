#!/bin/bash
for file in /staging/dagoldman2/staph-epi-genomic-deletion/*; do
    filename="$(basename "$file")"
    base="${filename%_S*}"
    echo "$base" >> samplesheet-dup.txt
done
sort -u samplesheet-dup.txt > samplesheet.txt
rm samplesheet-dup.txt