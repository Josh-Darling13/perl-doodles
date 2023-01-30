
#!/usr/bin/perl
use strict;
use warnings;
use 5.010;
# outputs a chess board pattern
# Yes I built this same program in javascript and yes, 
# I could do the whole thing with mostly turnary operators. 
# The reason I didn't is I wanted to show a way that relises
#  more on things that specific to perl. For instance 
#  "until," hash tables, and perl short hand, etc...




# The first time wrote this program
# I used alt code for the black and white squres.
# Perl does not like alt code squares.

my $number = 1;
# $intger = 0;
my $white = "_";
my $black = "#";
my @even_line = ();
my @odd_line = ();

until ($number == 9){
my $space_color_odd = $number %2 != 0? "w": "b";
my $space_color_even = $number %2 == 0? "w": "b";
push(@odd_line,$space_color_odd);
push(@even_line,$space_color_even);
$number++;
}

print @odd_line;
print "\n";
print @even_line;

#chomp()



