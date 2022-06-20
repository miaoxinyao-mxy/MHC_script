
perl 1.filter.pl AIA_HT > AIA_HT.vcf
plink --vcf AIA_HT.vcf --recode --out  AIA_HT
cat AIA_HT.config  |sed 1d|awk '{print $1"\t"$0}' > AIA_HT.pheno

plink --file AIA_HT --make-bed --out AIA_HT
plink --file AIA_HT --make-bed --out AIA_HT
plink --bfile AIA_HT --make-pheno  AIA_HT.pheno "AIA"  --assoc --allow-no-sex --adjust --out AIA_HT.out

perl 2.merge_ad.pl AIA_HT > AIA_HT.out.assoc.adjusted.merge
Rscript manhattan.R AIA_HT.out.assoc.adjusted.merge AIA_HT.manhattan.pdf AIA_HT.qq.pdf

perl 3.get_anno.pl AIA_HT > AIA_HT.assoc.anno.xls


