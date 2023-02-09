#! /usr/bin/perl

use strict;
use warnings;
use 5.32.1;

my @theArray = (1,1,10,20,30,7,6,5,4,2,3,4,5,6,7,8,9,11,22,23,22,21,20,19,18,15,12,9,6,3,555555,101,102,103,4,4,4,4,651,650,50,100,150,200,250,400,200,100);

sub UpcountTestAd{
    my @args = @_;
    print @args;
    print $args[2];

#    @a[$thispos]+1 == @a[$thispos+1]? true : false;
}

my $thispos = 1;

upcountTestAd($thispos,@theArray);