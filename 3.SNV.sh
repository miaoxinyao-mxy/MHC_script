ref=Homo_sapiens/hg38/ucsc_hg38/BWA_index/hg38.fa
indir=2.aln
outdir=3.vcf

for sam in `cat sample.list`
do
	gatk --java-options -Xmx5g HaplotypeCaller -R $ref -I $indir/$sam.markdup.bam -O $outdir/$sam.g.vcf.gz  -A StrandOddsRatio -A Coverage -A QualByDepth -A FisherStrand -A MappingQualityRankSumTest -A ReadPosRankSumTest -A RMSMappingQuality -ERC GVCF -L chr6
done
