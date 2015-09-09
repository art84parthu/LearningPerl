#!/usr/bin/perl
my $chunk = substr('learning perl is fun! Oh really?', -10, 2);
print "\nsubstring chunk : " . $chunk . "\n";
substr($chunk, 2, 4) = "New inserted word here";
print "\ninserted substr of chunk: " . $chunk ;
#--this doesnt work-- my $newstr = substr("soething cool goes here", -1, 1) = "new_word";
