#!/usr/bin/perl
#
# Use Markov chains to generate a project name without having to think about it
# Author: Bremen Braun

use strict;
use Algorithm::MarkovChain;
use File::Stream;
use Wesson::Tokenizer::Character;

die "Wrong number of arguments\n" . usage() unless scalar(@ARGV) == 1;
my ($file) = @ARGV;

open(my $fh, "<", $file) or die $!;
my $fstream = File::Stream->new($fh);
my $chainer = Algorithm::MarkovChain->new();
my $tokenizer = Wesson::Tokenizer::Character->new();

while (my $line = <$fstream>) {
	$chainer->seed(
		symbols => [$tokenizer->tokenizeString($line)]
	);
}

while (<>) {
	print join('', $chainer->spew(
		length => 15,
		stop_at_terminal => 1
	));
}

sub usage {
	return <<EOS;
$0 <words_file>
EOS
}
