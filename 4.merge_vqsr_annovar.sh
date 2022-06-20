gatk --java-options "-Xmx4g -Xms4g" GenomicsDBImport \
--genomicsdb-workspace-path 3.snv/my_database \
-L chr6:28000000-34000000 \
--reader-threads 4 \
-V 3.snv/S100.g.vcf.gz \
-V 3.snv/S104.g.vcf.gz \
-V 3.snv/S113.g.vcf.gz \
-V 3.snv/S114.g.vcf.gz \
-V 3.snv/S11.g.vcf.gz \
-V 3.snv/S120.g.vcf.gz \
-V 3.snv/S121.g.vcf.gz \
-V 3.snv/S122.g.vcf.gz \
-V 3.snv/S129.g.vcf.gz \
-V 3.snv/S130.g.vcf.gz \
-V 3.snv/S131.g.vcf.gz \
-V 3.snv/S137.g.vcf.gz \
-V 3.snv/S139_1.g.vcf.gz \
-V 3.snv/S139.g.vcf.gz \
-V 3.snv/S140.g.vcf.gz \
-V 3.snv/S14_1.g.vcf.gz \
-V 3.snv/S141.g.vcf.gz \
-V 3.snv/S142.g.vcf.gz \
-V 3.snv/S144.g.vcf.gz \
-V 3.snv/S148.g.vcf.gz \
-V 3.snv/S149.g.vcf.gz \
-V 3.snv/S14.g.vcf.gz \
-V 3.snv/S150.g.vcf.gz \
-V 3.snv/S165.g.vcf.gz \
-V 3.snv/S166.g.vcf.gz \
-V 3.snv/S167.g.vcf.gz \
-V 3.snv/S168.g.vcf.gz \
-V 3.snv/S169.g.vcf.gz \
-V 3.snv/S16.g.vcf.gz \
-V 3.snv/S18.g.vcf.gz \
-V 3.snv/S191.g.vcf.gz \
-V 3.snv/S19.g.vcf.gz \
-V 3.snv/S1.g.vcf.gz \
-V 3.snv/S22.g.vcf.gz \
-V 3.snv/S23_1.g.vcf.gz \
-V 3.snv/S23.g.vcf.gz \
-V 3.snv/S265.g.vcf.gz \
-V 3.snv/S269.g.vcf.gz \
-V 3.snv/S26.g.vcf.gz \
-V 3.snv/S28.g.vcf.gz \
-V 3.snv/S29.g.vcf.gz \
-V 3.snv/S30.g.vcf.gz \
-V 3.snv/S315.g.vcf.gz \
-V 3.snv/S318.g.vcf.gz \
-V 3.snv/S319.g.vcf.gz \
-V 3.snv/S31.g.vcf.gz \
-V 3.snv/S323.g.vcf.gz \
-V 3.snv/S327.g.vcf.gz \
-V 3.snv/S329.g.vcf.gz \
-V 3.snv/S32.g.vcf.gz \
-V 3.snv/S331.g.vcf.gz \
-V 3.snv/S332.g.vcf.gz \
-V 3.snv/S337.g.vcf.gz \
-V 3.snv/S391.g.vcf.gz \
-V 3.snv/S392.g.vcf.gz \
-V 3.snv/S393.g.vcf.gz \
-V 3.snv/S394.g.vcf.gz \
-V 3.snv/S395.g.vcf.gz \
-V 3.snv/S396.g.vcf.gz \
-V 3.snv/S397.g.vcf.gz \
-V 3.snv/S398.g.vcf.gz \
-V 3.snv/S399.g.vcf.gz \
-V 3.snv/S39.g.vcf.gz \
-V 3.snv/S400.g.vcf.gz \
-V 3.snv/S401.g.vcf.gz \
-V 3.snv/S402.g.vcf.gz \
-V 3.snv/S403.g.vcf.gz \
-V 3.snv/S404_2.g.vcf.gz \
-V 3.snv/S404.g.vcf.gz \
-V 3.snv/S405_2.g.vcf.gz \
-V 3.snv/S405.g.vcf.gz \
-V 3.snv/S406.g.vcf.gz \
-V 3.snv/S407.g.vcf.gz \
-V 3.snv/S408.g.vcf.gz \
-V 3.snv/S40.g.vcf.gz \
-V 3.snv/S416.g.vcf.gz \
-V 3.snv/S41.g.vcf.gz \
-V 3.snv/S42_1.g.vcf.gz \
-V 3.snv/S428.g.vcf.gz \
-V 3.snv/S42.g.vcf.gz \
-V 3.snv/S44.g.vcf.gz \
-V 3.snv/S45.g.vcf.gz \
-V 3.snv/S48.g.vcf.gz \
-V 3.snv/S4.g.vcf.gz \
-V 3.snv/S50.g.vcf.gz \
-V 3.snv/S53.g.vcf.gz \
-V 3.snv/S54.g.vcf.gz \
-V 3.snv/S55_1.g.vcf.gz \
-V 3.snv/S55.g.vcf.gz \
-V 3.snv/S56.g.vcf.gz \
-V 3.snv/S57.g.vcf.gz \
-V 3.snv/S58.g.vcf.gz \
-V 3.snv/S59.g.vcf.gz \
-V 3.snv/S5.g.vcf.gz \
-V 3.snv/S60.g.vcf.gz \
-V 3.snv/S61.g.vcf.gz \
-V 3.snv/S63.g.vcf.gz \
-V 3.snv/S65.g.vcf.gz \
-V 3.snv/S67-01.g.vcf.gz \
-V 3.snv/S67-02.g.vcf.gz \
-V 3.snv/S67.g.vcf.gz \
-V 3.snv/S6.g.vcf.gz \
-V 3.snv/S70.g.vcf.gz \
-V 3.snv/S71.g.vcf.gz \
-V 3.snv/S73.g.vcf.gz \
-V 3.snv/S75.g.vcf.gz \
-V 3.snv/S76.g.vcf.gz \
-V 3.snv/S77.g.vcf.gz \
-V 3.snv/S78.g.vcf.gz \
-V 3.snv/S79.g.vcf.gz \
-V 3.snv/S7.g.vcf.gz \
-V 3.snv/S80.g.vcf.gz \
-V 3.snv/S81.g.vcf.gz \
-V 3.snv/S82.g.vcf.gz \
-V 3.snv/S85.g.vcf.gz \
-V 3.snv/S88.g.vcf.gz \
-V 3.snv/S89.g.vcf.gz \
-V 3.snv/S90.g.vcf.gz \
-V 3.snv/S91.g.vcf.gz \
-V 3.snv/S94.g.vcf.gz \
-V 3.snv/S95.g.vcf.gz \
-V 3.snv/S99.g.vcf.gz \
-V 3.snv/S9.g.vcf.gz \
-V 3.snv/SABM150.g.vcf.gz

ref=Homo_sapiens/hg38/BWA_GATK_index/hg38.fa

gatk --java-options "-Xmx4g -Xms4g" GenotypeGVCFs -R $ref -V gendb://my_database -G StandardAnnotation -O raw_variants.vcf

gatk VariantRecalibrator -R $ref  -V raw_variants.vcf \
-resource:hapmap,known=false,training=true,truth=true,prior=15.0 Homo_sapiens/hapmap_3.3/GRCh38/hapmap_3.3.hg38.vcf.gz \
-resource:omini,known=false,training=true,truth=false,prior=12.0 omni_1000G/omni2.5/GRCh38/1000G_omni2.5.hg38.vcf.gz \
-resource:dbsnp,known=true,training=false,truth=false,prior=2.0 dbSNP/dbSNP_150/Homo_sapiens/GRCh38/dbSNP_150_hg38.common.prefixChr.vcf.bgz \
-an DP -an QD -an FS -an SOR -an ReadPosRankSum -an MQRankSum -mode SNP -tranche 100.0 \
-tranche 99.9 -tranche 99.0 -tranche 95.0 -tranche 90.0 \
-O variants.snp.recal \
--tranches-file variants.snp.tranches \
--rscript-file variants.snp.plots.R


gatk ApplyVQSR -R $ref  -V raw_variants.vcf \
--ts-filter-level 99.0 --tranches-file variants.snp.tranches \
--recal-file variants.snp.recal \
-mode SNP -O variants.snp.VQSR.vcf.gz

perl ANNOVAR/table_annovar.pl variants.snp.VQSR.vcf.gz humandb/ -buildver hg38  -out variants.snp.annvar -protocol refGene,exac03,1000g2015aug_all,esp6500siv2_all,avsnp150,clinvar_20200316,gnomad30_genome,dbnsfp35a -operation g,f,f,f,f,f,f,f -nastring . -vcfinput -polish



