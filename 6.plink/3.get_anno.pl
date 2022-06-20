$id = $ARGV[0];
open LS,"$id.out.assoc.adjusted.merge";
while(<LS>){
	chomp;
	@l = split /\t/;
	if($l[15]<0.0001){
		$in{"$l[1]_$l[6]_$l[3]"} = $l[15];;
	}
}

#attibute we need
open LS,"select.att";
$n_sel = 0;
while(<LS>){
	chomp;
	$select{$_} = 1;
	$n_sel ++;
}

#annovar output
$vcf = '../variants.snp.annvar.hg38_multianno.vcf';
$sam = `cat $vcf|grep CHROM|head -1 `;
chomp $sam;
@sam = split /\t/,$sam;
@sam = @sam[9..$#sam];


open LS,"$id.config";
<LS>;
while(<LS>){
	chomp;
	@l = split /\t/;
	$sam{$l[0]} = $l[1];
}

#annovar output
$txt = '../variants.snp.annvar.hg38_multianno.txt';
open IN,$txt;
$h = `head -1 $txt`;
chomp $h;
@h = split /\t/,$h;
$in{"$h[1]_$h[3]_$h[4]"} = 1;


while($l = <IN>){
	chomp $l;
	@l = split /\t/,$l;
	$info = "$l[1]_$l[3]_$l[4]";
	if($l[0] eq 'Chr'){
		for($i=121;$i<@l;$i++){
			$n = $i - 121;
			if(exists $sam{$sam[$n]}){
				$l[$i] = "$sam[$n]($sam{$sam[$n]})";
			}
		}
	}
	if(exists $in{$info}){
		$out = '';
		for($i=0;$i<121;$i++){
			if(exists $select{$h[$i]}){
				$out .= "\t$l[$i]";
			}
		}
		for($i=121;$i<@l;$i++){
			$n = $i - 121;
			if(exists $sam{$sam[$n]}){
				$out .= "\t$l[$i]";
			}
		}
		$out =~ s/^\t//;
		print "$out\n";
	}
}
