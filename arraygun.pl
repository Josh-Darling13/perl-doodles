#! /usr/bin/perl
use strict;
use warnings;
use 5.32.1;

my @theArray = (1,1,10,20,30,7,6,5,4,2,3,4,5,6,7,8,9,11,22,23,22,21,20,19,18,15,12,9,6,3,555555,101,102,103,4,4,4,4,651,650,50,100,150,200,250,400,200,100);

sub UpcountTestAd{
    my @args = @_;
    my $thispos = int $args[0];
    my $posIS = $thispos + 1;
    my $testAgainst = $thispos + 2;
    my $primaryVal = $args[$posIS];
    my $testLocation =  $args[$testAgainst];
    my $isConsec = ($primaryVal+1) == $testLocation? 1 : 0;
    return $isConsec;
}

my $thispos = 13;

print "result ", UpcountTestAd($thispos,@theArray);     #learned perls weird way to access functions as evertying in the paramerts are treated as an array


sub findConsecutiveOne
    {
    my @args = @_;
    my $arrayLen = $#args;                          #learned that perl doens't allow to official get Array length or contradictory info
    my @consecStart = [];
    my $i = 0;
    my $t = 0;
    my $c = 0;
    my $startNum = '';
    my $startcount = 1;                             # learned perl doesn't have "true" and "false" only 1 or 0
    my $multiCount = 0;

    while ($i < $arrayLen){
        if (UpcountTestAd($i,@theArray) == 1){              # tests for 2 consecutive numbers
            $t = $t + 1;

            if ($startcount == 1){
                $t = $t = 1;
                $startcount = 0;
            }

        }
            @consecStart.push($i);

            if ( @args[$i]+1 ==  @args[$i+1] &&  @args[$i]+2 !=  @args[$i+2]){                 # tests for 2 consecutive numbers to terminate a "streak"
                @consecStart.push($i);
                $startNum = consecStart.shift();
                $multiCount = 0;
                consectCount(c,startNum,t);
                multiCount = false;
                @consecStart = [];
                c++;
            }



        $i = $i+1;
    }

    print" \n array len: ", $arrayLen;

    }

findConsecutiveOne(@theArray);