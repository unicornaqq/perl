#!/usr/bin/perl
#this script is only used for the cygwin case
#since the output of the stat -m -d always in the format of windows
#but we prefer the format of linux.
#so some translate will be nedded.
if ($ARGV[1] =~ /(-m|-d)/) {
    print "Yes, you entered a correct command\n";
} else {
    die $!;
}

open ($fh, "accurev stat '$ARGV[1]'|") or die "$!";
while (<$fh>) {
    s(\\)(/)g;
    print
}
