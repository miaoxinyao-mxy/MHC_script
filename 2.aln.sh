ref=Homo_sapiens/hg38/ucsc_hg38/BWA_index/hg38.fa
indir=path_to_fastq_input
outdir=2.aln

for sam in `cat sample.list`
do
	bwa mem -t 4 -R \'@RG\\tID:$sam\\tLB:$sam\\tPL:illumina\\tCN:null\\tPU:$sam\\tSM:$sam\\tTS:WGS\\tIV:$sam\' $ref $indir/$sam\_1.fq.gz $indir/$sam\_2.fq.gz \| samtools sort --thread 4 -n \| samtools fixmate -O bam - $outdir/$sam.fixmate.bam
	samtools sort --thread 4 $outdir/$sam.fixmate.bam -o $outdir/$sam.sort.bam
	gatk --java-options -Xmx5g MarkDuplicates --REMOVE_DUPLICATES false -I $outdir/$sam.sort.bam -O $outdir/$sam.markdup.bam -M $outdir/$sam.metrics.txt
	samtools index $outdir/$sam.markdup.bam
done
