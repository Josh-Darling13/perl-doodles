#!/usr/bin/perl
use strict;
use warnings;
use 5.010;

my $number = 1;
my @even_line = ();
my @odd_line = ();

until ($number == 9){
my $space_color_odd = $number %2 != 0? "_": "#";
my $space_color_even = $number %2 == 0? "_": "#";
push(@odd_line,$space_color_odd);
push(@even_line,$space_color_even);
$number++;
}

my $odd_string = join '', @odd_line;
my $even_string = join '',  @even_line;

for (my $in = 0; $in < 9; $in++) {
    my $line_is = $in %2 != 0? $even_string : $odd_string;
    print $line_is."\n";
}

#A while back I wrote a program that had the same out to console in javascript. I wrote it using only turnary operators and 1 while loop.
# I didn't write that for readablity and nested a the "short" if staments on one line like this:
#
# if (l %2) {lineIs = goHere ? outString : hashTag;}
#
# for javescript that's "compact" the total lines of that compacted javascript program is 29 lines not inculding comments
# for bewtter readablity it really should be 35 --uncommented.
#
# the same program in perl also "uncommented" and using arrays... 24 lines.