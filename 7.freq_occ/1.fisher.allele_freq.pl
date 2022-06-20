open IN,$ARGV[0];
<IN>;
while(<IN>){
	chomp;
	@l = split /\t/;
	$in{$l[0]} = $l[1];
	$g{$l[1]} = 1;
}
@g =sort keys %g;

open IN,"specHLA.tsv";
$h = <IN>;
chomp $h;
@h = split /\t/,$h;
while(<IN>){
	chomp;
	@l = split /\t/;
	if(exists $in{$l[0]}){
		$n{$in{$l[0]}} ++;
		for($i=1;$i<@l;$i++){
			$l[$i] =~ /(^.*\*\d+:\d+)/;
			$hla = $1;

			$all{$hla}{$in{$l[0]}} ++;
		}

	}
}

foreach $hla(sort keys %all){
	if(exists $all{$hla}{$g[0]}){
		$n1 = $all{$hla}{$g[0]};
	}else{
		$n1 = 0;
	}
	$n3 = $n{$g[0]}*2 - $n1;
	if(exists $all{$hla}{$g[1]}){
		$n2 = $all{$hla}{$g[1]};
	}else{
		$n2 = 0;
	}
	$n4 = $n{$g[1]}*2 - $n2;
	$list = "$n1,$n2,$n3,$n4";
	print "t<-fisher.test(matrix(c($list),nrow=2))\np<-t\$p.value\nor<-as.numeric(t\$estimate)\nci95_1<-t\$conf.int[1]\nci95_2<-t\$conf.int[2]\nout<-paste(\"$hla($list)\",or,ci95_1,ci95_2,p,sep=\"\t\")\nwrite(out,file=\"$ARGV[1]\",append=TRUE)\n";
}
