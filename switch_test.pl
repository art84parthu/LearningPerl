#!/usr/bin/perl
use strict;
use warnings;
#use feature ":5.14";

#use feature qw(switch);
#use Switch '__';
use Data::Dumper;

sub choose{
    my ($arg) = @_;
    my $range;

#    given ($arg) {
#        when ([1..4]) { $range = $arg; }
#        when ([5..10]) { $range = '5-10'; }
#        when ([11..20]) { $range = '11-20'; }
#        when ($_ > 20) { $range = '>20'; }
#        default { $range = 'err'; }
#    }

if ($arg >= 1 && $arg <= 4) { $range = $arg; }
elsif ($arg >= 5 && $arg <= 10) { $range = '5-10'; } 
else { $range='err'; }


#    switch($arg){
#        case [1..4] { $range = $arg; }
#        case [5..10] { $range = "5-10"; }
#        case [11..20] { $range = '11-20'; }
#        case __ > 20 { $range = '>20'; }
#    }


    return $range;
}

print "range returned for 0 is " . Dumper(choose(0)) . "\n";
print "range returned for 1 is " . Dumper(choose(1)) . "\n";
print "range returned for 4 is " . Dumper(choose(4)) . "\n";
print "range returned for 5 is " . Dumper(choose(5)) . "\n";
print "range returned for 10 is " . Dumper(choose(10)) . "\n";
print "range returned for 8 is " . Dumper(choose(8)) . "\n";
print "range returned for 12 is " . Dumper(choose(12)) . "\n";
print "range returned for 11 is " . Dumper(choose(11)) . "\n";
print "range returned for 25 is " . Dumper(choose(25)) . "\n";
