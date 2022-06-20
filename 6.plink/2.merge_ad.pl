$g = $ARGV[0];
open IN,"$g.out.assoc.adjusted";

while(<IN>){
	chomp;
	@l = split;
	@out = @l[3..9];
	$out = join("\t",@out);
	$ad{$l[1]} = $out;
}
open IN,"$g.out.assoc";
while(<IN>){
	chomp;
	@l = split;
	$out = join("\t",@l);
	if(exists $ad{$l[1]}){
		print "$out\t$ad{$l[1]}\n";
	}

}
