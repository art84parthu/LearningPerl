#!/usr/bin/perl
$a = 10;
$b = 100;
print "$a " . $a . "\n";
print "$b " . $b . "\n";
$a //= $b;
print "$a " . $a . "\n";

$b //= $a;
print "$b " . $b . "\n";

