#!/bin/bash
for entry in /staging/groups/bacteriology_mo/dorang/staph-epi-genomic-deletion/output/breseq/pops/*
do
    mkdir -p output/${entry##*/}
    echo ${entry##*/}
    cp -r ${entry}/output/* output/${entry##*/}/
done
