package Wesson::Filter::Github;
#
# Ok, so now you have some super cool names but maybe that name is already in
# use by some other project. Let's go ahead and filter out names which aren't
# unique

use strict;
use Pithub::Search;

sub new {
	my $package = shift;
	
	return bless {
		searcher => Pithub::Search->new(),
	},
}

sub findExact {
	my ($self, $name) = @_;
	
	my $result = $self->{searcher}->repos(
		keyword => $name
	);
}

1;
