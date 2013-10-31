package Wesson::Tokenizer::Character;
#
# Generate character tokens
#

use strict;

sub new {
	my $package = shift;
	
	return bless {}, $package;
}

sub tokenizeString {
	my ($self, $string) = @_;
	
	return split('', $string);
}

sub tokenizeFile {
	my ($self, $path) = @_;
	
	my @tokens;
	open(my $fh, "<", $path) or die $!;
	while (chomp(my $line = <$fh>)) {
		push(@tokens, $self->tokenizeString($line));
	}
	
	return @tokens;
}

1;
