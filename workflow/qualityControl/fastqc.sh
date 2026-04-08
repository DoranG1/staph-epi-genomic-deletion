SAMPLE="$1"
fastqc --extract --delete --nogroup -o /staging/groups/bacteriology_mo/dorang/staph-epi-genomic-deletion/output/fastqc /staging/dagoldman2/staph-epi-genomic-deletion/${SAMPLE}*.fastq.gz