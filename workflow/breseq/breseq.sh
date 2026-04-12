#!/bin/bash
SAMPLE="$1"
CPU="$2"
breseq -j ${CPU} -p -k -o /staging/groups/bacteriology_mo/dorang/staph-epi-genomic-deletion/output/breseq/pops/${SAMPLE}_RP62a_pop_breseq \
 -r /staging/dagoldman2/ref_genomes/RP62a.gb \
 /staging/groups/bacteriology_mo/dorang/staph-epi-genomic-deletion/output/fastp/${SAMPLE}_R1.fastp.fastq.gz \
 /staging/groups/bacteriology_mo/dorang/staph-epi-genomic-deletion/output/fastp/${SAMPLE}_R2.fastp.fastq.gz