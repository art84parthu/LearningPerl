#!/usr/bin/perl
use strict;
use warnings;

use Readonly;
use Data::Dumper;

Readonly our @valid_max_persons_ranges => ('1', '2', '3', '4', '5-10', '11-20', '21-30', '31-40', '41-50', '51-100', '>100');

sub getRangesFromAndAbove {
    my ($max_person_range) = @_;
    my @sub_array;
    for (my $i =0; $i <= scalar(@valid_max_persons_ranges); $i++){
        if ($max_person_range eq $valid_max_persons_ranges[$i]){
           for(my $j=$i; $j < scalar(@valid_max_persons_ranges); $j++){
                push @sub_array, $valid_max_persons_ranges[$j];
           }
           return @sub_array;
        }
    }
    return ;
}

my @ret = getRangesFromAndAbove('4');
my $ret = @ret;
print "returned range " . Dumper(@ret) . "\n";
print "array size returned = " . Dumper($ret) . "\n";
