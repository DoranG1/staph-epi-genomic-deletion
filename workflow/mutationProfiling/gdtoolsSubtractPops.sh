SAMPLE="$1"
mv breseq input
gdtools subtract -o output/mutDiff-${SAMPLE}-g1117-pop.gd \
 input/WGS-260210-QUO1021220/output/${SAMPLE}_252_pop_breseq/output.gd \
 input/WGS-251108-QUO1019677/output/g1117_252_clone_breseq/output.gd
gdtools compare -o output/mutDiff-${SAMPLE}-g1117-pop.html -r \
 /staging/dagoldman2/ref_genomes/MRSA252_assembly.gff3 output/mutDiff-${SAMPLE}-g1117-pop.gd