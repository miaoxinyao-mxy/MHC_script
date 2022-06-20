indir=path_to_fastq_input
outdir=5.specHLA

# the SpecHLA_whole.sh can be find in https://github.com/deepomicslab/SpecHLA#whole-mode
for sam in `cat sample.list`
do
	echo sh SpecHLA_whole.sh -n $sam -1 $indir/$sam\_1.fq.gz -2 $indir/$sam\_2.fq.gz  -p Asian -o $outdir/
done
