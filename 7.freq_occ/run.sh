for i in `ls ../input/|grep config|sed -e 's/.config//'`
do
	perl 1.fisher.allele_freq.pl ../input/$i.config $i.allele_freq.out > $i.allele_freq.R
	Rscript $i.allele_freq.R
	Rscript p_ad.R $i.allele_freq.out $i.allele_freq.out.p_ad

	perl 2.fisher.occ.pl ../input/$i.config $i.occ.out > $i.occ.R
	Rscript $i.occ.R
	Rscript p_ad.R  $i.occ.out $i.occ.out.p_ad
done
perl 3.merge_all_visual.pl > all.candidante.allele.tsv
