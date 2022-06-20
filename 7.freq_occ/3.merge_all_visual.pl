@file = glob("*p_ad");
foreach $file (@file){
	$file =~ /(.+?)\.(.+?)\./;
	($group,$type) = ($1,$2);
	$g{$group} = 1;
	open IN,$file;
	<IN>;
	while(<IN>){
		chomp;
		@l = split /\t/;
		$hla = (split /\(/,$l[0])[0];
		if($l[-1]<0.05){
			unless($all{$hla}{$group} =~ $type){
				$all{$hla}{$group} .= "$type;";
			}
		}
	}
}
@g = sort keys %g;
@g = ('AIA_HT',"AIA_HC","case_HC","HT_HC");
$head = join("\t",@g);
print "hla\t$head\n";
foreach $hla(keys %all){
	$out = $hla;
	for($i=0;$i<@g;$i++){
		if(exists $all{$hla}{$g[$i]}){
			if($all{$hla}{$g[$i]} eq 'allele_freq;occ;'){
				$out .= "\t3";
			}else{
				if($all{$hla}{$g[$i]} =~ /allele_freq/){
					$out .= "\t2";
				}else{
					$out .= "\t1";
				}
			}
		}else{
			$out .= "\t0";
		}
	}
	print "$out\n";
}

