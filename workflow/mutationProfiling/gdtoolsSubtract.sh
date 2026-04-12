SAMPLE="$1"
mv breseq input
gdtools subtract -o output/mutDiff-${SAMPLE}-RP62a.gd \
 input/output/${SAMPLE}_RP62a_pop_breseq/output.gd \
 input/output/RP62a_P0_RP62a_clone_breseq/output.gd
gdtools compare -o output/mutDiff-${SAMPLE}-RP62a.html -r \
 /staging/dagoldman2/ref_genomes/RP62a.gb output/mutDiff-${SAMPLE}-RP62a.gd
gdtools compare -o output/mutDiff-${SAMPLE}-RP62a.csv -r \
 /staging/dagoldman2/ref_genomes/RP62a.gb output/mutDiff-${SAMPLE}-RP62a.gd