SAMPLE="$1"
rm -f /staging/groups/bacteriology_mo/dorang/staph-epi-genomic-deletion/output/fastp/${SAMPLE}_R1.fastp.fastq.gz
rm -f /staging/groups/bacteriology_mo/dorang/staph-epi-genomic-deletion/output/fastp/${SAMPLE}_R2.fastp.fastq.gz
rm -f /staging/groups/bacteriology_mo/dorang/staph-epi-genomic-deletion/output/fastp/${SAMPLE}_fastp.html
rm -f /staging/groups/bacteriology_mo/dorang/staph-epi-genomic-deletion/output/fastp/${SAMPLE}_fastp.json
fastp --dedup --trim_poly_g -q 28 -u 25 -i /staging/dagoldman2/staph-epi-genomic-deletion/${SAMPLE}*_R1_001.fastq.gz -I /staging/dagoldman2/staph-epi-genomic-deletion/${SAMPLE}*_R2_001.fastq.gz -o \
 /staging/groups/bacteriology_mo/dorang/staph-epi-genomic-deletion/output/fastp/${SAMPLE}_R1.fastp.fastq.gz -O /staging/groups/bacteriology_mo/dorang/staph-epi-genomic-deletion/output/fastp/${SAMPLE}_R2.fastp.fastq.gz -h \
 /staging/groups/bacteriology_mo/dorang/staph-epi-genomic-deletion/output/fastp/${SAMPLE}_fastp.html -j /staging/groups/bacteriology_mo/dorang/staph-epi-genomic-deletion/output/fastp/${SAMPLE}_fastp.json