#!usr/bin/perl 
#!/usr/bin/perl -w

use JSON;
use GponMeJson;
use OmciParseBytes;
use GponMeTableParse;

my $meIdInParse = 0;
my $instanceIdInParse = 0;
sub omciParseUploadNextMsg{
	my @msg = @_;
	my $parsedBytes;
	
	my $meId = omciParse2BytesAsDec shift @msg,shift @msg;
	my $instanceId = omciParse2BytesAsDec shift @msg,shift @msg;
	my $attrMask = omciParse2BytesAsDec shift @msg,shift @msg;
	
	if(defined($meTable[$meId]))
	{
		my $me=$meTable[$meId];
		my $meName=$me->{"meName"};
		my @reservedTableBytes = ();
		if($meIdInParse !=$meId || $instanceIdInParse != $instanceId)
		{
			print "\n>meId:$meId  $meName  [instanceId:$instanceId]\n";
			$meIdInParse = $meId;
			$instanceIdInParse = $instanceId;
			@reservedTableBytes = ();
		}
		my @attr=@{$me->{"attrs"}};
		my $attrIdx=0;
		if(defined($attr[1]))
		{
			$parsedBytes = 6; #meId, instanceId and attrMask occupy 6 bytes
			for($attrIdx=1; $attrIdx<@attr; $attrIdx++)
			{
				$attrIdxMaskBit=0x8000 >> ($attrIdx -1);
				if($attrIdxMaskBit & $attrMask)
				{
					my $name=$attr[$attrIdx]->{"name"};
					my $type=$attr[$attrIdx]->{"type"};
					my $size=$attr[$attrIdx]->{"size"};
					my $value=undef;
					if(($type eq "short" || $type eq "pointer") &&  $size == 2 )
					{
						$value = omciParse2BytesAsDec shift @msg,shift @msg;
						$parsedBytes+=2;
					}
					elsif($type eq "int" &&  $size == 4 )
					{
						$value = omciParse4BytesAsDec shift @msg,shift @msg,shift @msg,shift @msg;
						$parsedBytes+=4;
					}
					elsif($type eq "hex" &&  $size == 2 )
					{
						$value = omciParse2BytesAsHex shift @msg,shift @msg;
						$parsedBytes+=2;
					}
					elsif($type eq "hex" &&  $size == 4 )
					{
						$value = omciParse4BytesAsHex shift @msg,shift @msg,shift @msg,shift @msg;
						$parsedBytes+=4;
					}
					elsif($type eq "byte" &&  $size == 1)
					{
						$value = omciParse1ByteAsDec shift @msg;
						$parsedBytes+=1;
					}
					elsif($type eq "string")
					{
						my @args;
						for(my $a = 0; $a < $size; $a++)
						{
							push(@args, shift(@msg));
						}
						$value = omciParseStringBytes @args;
						$parsedBytes+=$size;
					}
					elsif($type eq "octstring")
					{
						my @args;
						for($a = 0; $a < $size; $a++)
						{
							push(@args, shift(@msg));
						}
						$value = omciParseOctStringBytes @args;
						$parsedBytes+=$size;
					}
					elsif($type eq "ipaddr" &&  $size == 4)
					{
						$value = omciParse4BytesIpAddr shift @msg,shift @msg,shift @msg,shift @msg;
						$parsedBytes+=4;
					}
					elsif($type eq "macaddr" &&  $size == 6)
					{
						$value = omciParse6BytesMacAddr shift @msg,shift @msg,shift @msg,shift @msg,shift @msg,shift @msg;
						$parsedBytes+=6;
					}
					elsif($type eq "sn" &&  $size == 8)
					{
						$value = omciParse8BytesSN shift @msg,shift @msg,shift @msg,shift @msg,shift @msg,shift @msg,shift @msg,shift @msg;
						$parsedBytes+=8;
					}					
					elsif($type eq "table" && $size == 0)
					{
						my @args;
						$size = $attr[$attrIdx]->{"entrylen"};
						$parseTableFun= getGponMeTableParseFun($meId, $attrIdx);
						$a = 0;
						if(@reservedTableBytes > 0)
						{
							print "We need deal with the reserved table bytes from last omci message.\n";
							if(@reservedTableBytes > $size)
							{
								print "ERROR! reserved table bytes large than the table entry length.\n";
							}
							for(; $a < @reservedTableBytes; $a++)
							{
								push(@args, shift(@reservedTableBytes));
							}
						}
						$parsedBytes+=$size-$a;
						for(; $a < $size; $a++)
						{
							push(@args, shift(@msg));
						}
						if(defined $parseTableFun)
						{
							my $parseResult = &$parseTableFun(@args);
							if(defined $parseResult && $parseResult ne "")
							{
								print $parseResult;
								while(@msg > $size)
								{
									for($a = 0; $a < $size; $a++)
									{
										push(@args, shift(@msg));
									}
									$parseResult = &$parseTableFun(@args);
									$parsedBytes+=$size;
									if(defined $parseResult && $parseResult ne "")
									{
										print $parseResult;
									}
									else
									{
										last;
									}
								}
							}
							
							if(defined $parseResult && $parseResult ne "" && @msg < $size)
							{
								#need reserve for following use
								@reservedTableBytes = @msg;
							}
						}						
					}
					else
					{
						print "Unkown type:$type with size:$size\n";
						my @args;
						for($a = 0; $a < $size; $a++)
						{
							push(@args, shift(@msg));
						}
						$parsedBytes+=$size;
					}
					print "\t$name:$value\n";
				}
				
			}
			if($parsedBytes > 32)
			{
				print "ERROR! the parsedBytes large than 32\n";
			}
		}
		else
		{
			print "There is no attribute definition for meId:$meId\n";
		}
			

	}
	else{
		print "There is no definition in meTable for id:$meId\n";
	}
}

if(@ARGV != 1)
{
	print "must input the mibuploadnext msg dump file with parseMibUploadNext.pl\n";
}
$mibupdumpfn=$ARGV[0];

@meTable=getGponMeArray();

unless ( open ( FILE , "<$mibupdumpfn" )){

    print "Can not open the file:$mibupdumpfn\n";

}
my $lineIdx=0;
my $msgPart1;
my $msgPart2;
while (<FILE>) {
    chomp;
	$lineIdx++;
    if($_ eq ""){
		next;
	}
	$msgPart1 = $_;
	my $row=<FILE>;
	$lineIdx++;
	chomp $row;
	if($row eq "") {
	    print "ERROR! line:$lineIdx should include mibupload next msg last 16 bytes, but encount blank.\n"; 
		next;
	}
	$msgPart2=$row;
	my @msgPart1 = split ' ',$msgPart1;
	my @msgPart2 = split ' ',$msgPart2;
	my @msg = (@msgPart1,@msgPart2);

	omciParseUploadNextMsg @msg;
}

=foreach my $me (@meTable)
{
	if(defined $me)
	{	
		print $me->{"meId"},":",$me->{"meName"},"\n";
		for my $attr (@{$me->{"attrs"}})                                                                                                           
		{      
			if(defined $attr)
			{
				print "\t",$attr->{"idx"},"---",$attr->{"name"},":",$attr->{"size"},"\n";
			}
		} 
	}
}
=cut



