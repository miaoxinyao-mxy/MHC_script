indir=path_to_fastq_input
outdir=1.QC/
for fq in `ls $indir/*fq.gz`
do
	fastqc -o $outdir -t 6 $fq
done
