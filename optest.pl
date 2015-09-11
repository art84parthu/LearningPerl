#!/usr/bin/perl
$a;
$b;
print "a = " . $a . "\n";
print "b = " . $b . "\n";
$a //= 10;
print "a after slanting or = " . $a . "\n";
$b ||= 10;
print "b after straight or = " . $b . "\n";

$a //= 100;
$b ||= 100;
print "a after slanting or = " . $a . "\n";
print "b after straight or = " . $b . "\n";
