#!/bin/bash
# Clear output file if it exists.
> "output/combined.csv"
first=1
# Read through breseq population outputs and find all associated output.csv files.
for entry in output/*_pop_*/output.csv
do
    # Extract sample name from parent directory.
    sample="$(basename "$(dirname "$entry")")"
    echo "$sample"
    if [[ $first -eq 1 ]]; then
        # Append the header line with the rest of the .csv contents only once for the first .csv file read.
        awk -v s="$sample" 'NR==1 {print $0 ",sample"} NR>1 {print $0 "," s}' "$entry" >> "output/combined.csv"
        first=0
    else
        # Skip the header line and append the rest of the .csv contents.
        awk -v s="$sample" 'NR>1 {print $0 "," s}' "$entry" >> "output/combined.csv"
    fi
done
