open LS,"$ARGV[0].config";
<LS>;
while(<LS>){
	chomp;
	@l = split /\t/;
	$in{$l[0]} = 1;
}

open IN,"gunzip -dc ../variants.snp.VQSR.vcf.gz|";
while(<IN>){
	if(/^##/){next}
	chomp;
	@l = split /\t/;

	if(/^#/){
		@h = @l;
	}else{
		if(length($l[3]) > 1 || length($l[4]) > 1 || $l[1] > 35000000||$l[1] < 27000000){
			next;
		}
	}


	$ngt = 0;
	$out = $l[0];
	for($i=1;$i<9;$i++){
		$out .= "\t$l[$i]";
	}
	for($i=9;$i<@l;$i++){
		if(exists $in{$h[$i]}){
			$out .= "\t$l[$i]";
			unless($l[$i] =~ /\.\/\./||$l[$i] =~ /0\/0/){
				$ngt ++;
			}
		}
		
	}
	if($ngt > 1){
		print "$out\n";
	}
	
}
