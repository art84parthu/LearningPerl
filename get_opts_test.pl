#!/usr/bin/perl

use strict;
use warnings FATAL => 'all';

use Getopt::Long qw(GetOptions);
use Pod::Usage;

use Data::Dumper;

my $arg1;
my $arg2;
my $option_d;
my $help;

usage() unless GetOptions(
    'c|long_name1=s' => \$arg1,
    'r|long_name2=s' => \$arg2,
    'd|long_name3' => \$option_d,
    'h|help' => \$help,
);

if($help){
    usage();
    exit;
}

if($option_d){
    print "You have enabled option d\n";
}


if(!$arg1 && !$arg2){
    print "Missing arguments\n";
    usage();
    exit;
}

print "argument for option c = " . Dumper($arg1);
print "argument for option r = " . Dumper($arg2);


sub usage {
    pod2usage(1);
}




=head1 NAME

gets_opts_test - sample script to show how GetOpts::Long can be used to enable command line options and arguments for a perl script. 

=head1 SYNOPSIS

gets_opts_test [-h] [-r LONG_DESC] [-c LONG_DESC] [-d LONG_DESC] -- program to whatever! 

  Options:
   -h show this help text
   -r long_name2 mandatory argument required. 
   -c long_name1 mandatory argument required. 
   -d long_name3 argument not required. 

