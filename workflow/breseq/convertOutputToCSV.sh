SAMPLE="$1"
mv breseq input
mkdir -p output/${SAMPLE}_RP62a_clone_breseq
gdtools compare -o output/${SAMPLE}_RP62a_clone_breseq/output.csv \
 -r /staging/dagoldman2/ref_genomes/RP62a.gb input/output/${SAMPLE}_RP62a_clone_breseq/output.gd