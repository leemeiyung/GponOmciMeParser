package GponMeTableParse;
require Exporter;

use OmciParseBytes;

our @ISA =qw(Exporter);
our @EXPORT =qw(getGponMeTableParseFun);

sub omciExtVlanTagOperConf_RecvFrameVlanTagOperTable{
	my @tableEntry = @_;
	#print( "@tableEntry\n" );
	my $word1 = omciParse4BytesAsDec(shift @tableEntry,shift @tableEntry,shift @tableEntry,shift @tableEntry);
	my $word2 = omciParse4BytesAsDec(shift @tableEntry,shift @tableEntry,shift @tableEntry,shift @tableEntry);
	my $word3 = omciParse4BytesAsDec(shift @tableEntry,shift @tableEntry,shift @tableEntry,shift @tableEntry);
	my $word4 = omciParse4BytesAsDec(shift @tableEntry,shift @tableEntry,shift @tableEntry,shift @tableEntry);
	
	my $word1BinStr=sprintf("%032b",$word1);
	my $word2BinStr=sprintf("%032b",$word2);
	my $word3BinStr=sprintf("%032b",$word3);
	my $word4BinStr=sprintf("%032b",$word4);
	
	my ($filterOuterPriBits,$filterOuterVidBits,$filterOuterTpidBits,$filterOuterPad12Bits) = unpack("A4A13A3A12",$word1BinStr); 
	my $filterOuterPri=oct( '0b' . $filterOuterPriBits);
	my $filterOuterVid=oct( '0b' . $filterOuterVidBits);
    my $filterOuterTpid=oct( '0b' . $filterOuterTpidBits);
	my $filterOuterPad=sprintf "0x%x ",oct( '0b' . $filterOuterPad12Bits);
	
	my ($filterInnerPriBits,$filterInnerVidBits,$filterInnerTpidBits,$filterInnerPad8Bits,$filterEthertypeBits) = unpack("A4A13A3A8A4",$word2BinStr); 
	my $filterInnerPri=oct( '0b' . $filterInnerPriBits);
	my $filterInnerVid=oct( '0b' . $filterInnerVidBits);
    my $filterInnerTpid=oct( '0b' . $filterInnerTpidBits);	
	my $filterInnerPad=sprintf "0x%x ",oct( '0b' . $filterInnerPad8Bits);
	my $filterEthertype=oct( '0b' . $filterEthertypeBits);	
	
	my ($treatmentTagsToRemoveBits,$pad10Bits,$treatmentOuterPriBits,$treatmentOuterVidBits,$treatmentOuterTpidBits) = unpack("A2A10A4A13A3",$word3BinStr); 
	my $treatmentTagsToRemove=oct( '0b' . $treatmentTagsToRemoveBits);
	my $treatmentOuterPri=oct( '0b' . $treatmentOuterPriBits);
	my $treatmentOuterVid=oct( '0b' . $treatmentOuterVidBits);
    my $treatmentOuterTpid=oct( '0b' . $treatmentOuterTpidBits);	
	
	my ($pad12Bits,$treatmentInnerPriBits,$treatmentInnerVidBits,$treatmentInnerTpidBits) = unpack("A12A4A13A3",$word4BinStr); 
	my $treatmentInnerPri=oct( '0b' . $treatmentInnerPriBits);
	my $treatmentInnerVid=oct( '0b' . $treatmentInnerVidBits);
    my $treatmentInnerTpid=oct( '0b' . $treatmentInnerTpidBits);	
	
	my $parseResult="\
\tfilterOuterPri:$filterOuterPri\
\tfilterOuterVid:$filterOuterVid\
\tfilterOuterTpid:$filterOuterTpid\
\tfilterOuterPad:$filterOuterPad\
\tfilterInnerPri:$filterInnerPri\
\tfilterInnerVid:$filterInnerVid\
\tfilterInnerTpid:$filterInnerTpid\
\tfilterInnerPad:$filterInnerPad\
\tfilterEthertype:$filterEthertype\
\ttreatmentTagsToRemove:$treatmentTagsToRemove\
\ttreatmentOuterPri:$treatmentOuterPri\
\ttreatmentOuterVid:$treatmentOuterVid\
\ttreatmentOuterTpid:$treatmentOuterTpid\
\ttreatmentInnerPri:$treatmentInnerPri\
\ttreatmentInnerVid:$treatmentInnerVid\
\ttreatmentInnerTpid:$treatmentInnerTpid\n";
	
	return $parseResult;
}

sub getGponMeTableParseFun{
	my $meId = shift;
	my $attrIdx = shift;
	
	if($meId == 171 && $attrIdx == 6){
		return omciExtVlanTagOperConf_RecvFrameVlanTagOperTable;
	}
	else{
		return undef;
	}
}

1;