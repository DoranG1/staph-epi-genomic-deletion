#!/bin/bash
# Clear output file if it exists.
> "output/combined.csv"
first=1
# Read through mutdiff outputs and find all .csv files.
for entry in output/*.csv
do
    # Extract sample name from file name.
    sample="${entry%-RP62a.csv}"
    sample="${sample#output/mutDiff-}"
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
