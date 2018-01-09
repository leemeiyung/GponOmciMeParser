package OmciParseBytes;
require Exporter;

our @ISA =qw(Exporter);
our @EXPORT =qw(omciParse1ByteAsDec omciParse1ByteAsHex omciParse2BytesAsDec omciParse2BytesAsHex omciParse4BytesAsDec omciParse4BytesAsHex omciParseStringBytes omciParseOctStringBytes omciParse4BytesIpAddr omciParse6BytesMacAddr omciParse8BytesSN);

sub omciParse1ByteAsDec{
	my $id0 = $_[0];
	my $id16="$id0";
	my $id10=hex($id16);
	
	return "$id10";
}

sub omciParse1ByteAsHex{
	my $id0 = $_[0];

	return "0x$id0";
}

sub omciParse2BytesAsDec{
	my $id0 = $_[0];
	my $id1 = $_[1];
	my $id16="$id0$id1";
	my $id10=hex($id16);
	
	return "$id10";
}
sub omciParse2BytesAsHex{
	my $id0 = $_[0];
	my $id1 = $_[1];

	return "0x$id0$id1";
}
sub omciParse4BytesAsDec{
	my $id0 = $_[0];
	my $id1 = $_[1];
	my $id2 = $_[2];
	my $id3 = $_[3];	
	my $id16="$id0$id1$id2$id3";
	my $id10=hex($id16);
	
	return "$id10";
}

sub omciParse4BytesAsHex{
	my $id0 = $_[0];
	my $id1 = $_[1];
	my $id2 = $_[2];
	my $id3 = $_[3];	
	
	return "0x$id0$id1$id2$id3";
}

sub omciParse4BytesIpAddr{
	my $ip0 = hex($_[0]);
	my $ip1 = hex($_[1]);
	my $ip2 = hex($_[2]);
	my $ip3 = hex($_[3]);	

	return "$ip0.$ip1.$ip2.$ip3";
}

sub omciParseStringBytes{
	my @args = @_;	
	my @ascii;
	my @chars;
	foreach my $arg (@args)
	{
		push @ascii, hex($arg);
	}
	
	my $str;
	if($ascii[0] == 0)
	{
		$str = "NULL";
	}
	else
	{
		#$str = pack("C*", @ascii);
		foreach my $asc (@ascii)
		{
			if($asc == 0)
			{
				last;
			}
			push @chars, chr($asc);
		}
		$str = join('', @chars);
	}
	return $str;
}
sub omciParseOctStringBytes{
	my @args = @_;	
	my $octStr = join(' ',@args);
	return $octStr;
}

sub omciParse6BytesMacAddr{
	my $mac0 = $_[0];
	my $mac1 = $_[1];
	my $mac2 = $_[2];
	my $mac3 = $_[3];	
	my $mac4 = $_[4];
	my $mac5 = $_[5];	
	
	return "$mac0-$mac1-$mac2-$mac3-$mac4-$mac5";
}

sub omciParse8BytesSN{
	my @vendor;
	my @sn;
	my $str;
	
	push @vendor, chr(hex(shift));
	push @vendor, chr(hex(shift));
	push @vendor, chr(hex(shift));
	push @vendor, chr(hex(shift));
	@sn = @_;
	
	$str = sprintf("%s-%s", join('',@vendor),join('',@sn));
	return $str;
}

1;