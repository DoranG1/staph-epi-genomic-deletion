SAMPLE="$1"
fastqc --extract --delete --nogroup -o /staging/groups/bacteriology_mo/dorang/WGS-260210-QUO1021220/output/fastqc /staging/dagoldman2/WGS-260210-QUO1021220/${SAMPLE}*.fastq.gz