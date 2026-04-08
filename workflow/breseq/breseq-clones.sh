#!/bin/bash
SAMPLE="$1"
CPU="$2"
breseq -j ${CPU} -k -o /staging/groups/bacteriology_mo/dorang/staph-epi-genomic-deletion/output/breseq/clones/${SAMPLE}_RP62a_clone_breseq \
 -r /staging/dagoldman2/ref_genomes/RP62a.gb \
 /staging/dagoldman2/staph-epi-genomic-deletion/fastp/${SAMPLE}_R1.fastp.fastq.gz \
 /staging/dagoldman2/staph-epi-genomic-deletion/fastp/${SAMPLE}_R2.fastp.fastq.gz