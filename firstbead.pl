#!/usr/bin/perl
use strict;
use warnings;
use 5.010;
# outputs a chess board pattern
# Yes I built this same program in javascript and yes, 
# I could do the whole thing with mostly turnary operators. 
# The reason I didn't is I wanted to show a way that relises
#  more on things that specific to perl. For instance 
#  "until," string replacement, "my" local variables, perl short hand, etc...
# The first time wrote this program
# I used alt code for the black and white squres.
# Perl does not like alt code squares.

my $number = 1;
my @the_board = (1..8);
my @even_line = ();
my @odd_line = ();

until ($number == 9){
my $space_color_odd = $number %2 != 0? "w": "b";                #I wanted to use strint replace to add an extra step
my $space_color_even = $number %2 == 0? "w": "b";               # but these could have just been "spaces"
push(@odd_line,$space_color_odd);
push(@even_line,$space_color_even);
$number++;
}

#convert arrays to strings.
my $odd_string = join '', @odd_line;
my $even_string = join '',  @even_line;

$odd_string =~ tr/w/_/;                                         # totally unnecessary
$odd_string =~ tr/b/#/;                                         # I just wanted to have with the string replace
$even_string =~ tr/w/_/;                                        # operator.
$even_string =~ tr/b/#/;

for my $in (@the_board){
    my $line_is = $in %2 != 0? $even_string : $odd_string;
    print $line_is."\n";
}

#for a "fun obervation" check out the file "shortboard.pl"