# *************************************************************************************** #
# ---------------------------------- EULA NOTICE ---------------------------------------- #
#                     Agreement between "Haroon Awan" and "You"(user).                    #
# ---------------------------------- EULA NOTICE ---------------------------------------- #
#  1. By using this piece of software your bound to these point.                          #
#  2. This an End User License Agreement (EULA) is a legal between a software application #
#     author "Haroon Awan" and (YOU) user of this software.                               #
#  3. This software application grants users rights to use for any purpose or modify and  #
#     redistribute creative works.                                                        #
#  4. This software comes in "is-as" warranty, author "Haroon Awan" take no responsbility #
#     what you do with by/this software as your free to use this software.                #
#  5. Any other purpose(s) that it suites as long as it is not related to any kind of     #
#     crime or using it in un-authorized environment.                                     #
#  6. You can use this software to protect and secure your data information in any        #
#     environment.                                                                        #
#  7. It can also be used in state of being protection against the unauthorized use of    #
#     information.                                                                        #
#  8. It can be used to take measures achieve protection.                                 #
# *************************************************************************************** #


#!/usr/bin/perl
use strict;
use LWP::Simple qw($ua get);
		$ua = LWP::UserAgent->new;
		$ua->agent('Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.3) Gecko/20070309 Firefox/2.0.0.9');
# Array
my @found;

# Call Subroutine
&usage unless @ARGV==3;
my $url = $ARGV[0];
my $dirlist = $ARGV[1];
my $results = $ARGV[2];

# File Handler
open(ifile, "<$dirlist") || die "Couldn't open file\n";
my @dirs =<ifile>;
close("ifile");

# Call Subroutine
&search;

# Subroutine
sub usage{ 	print "[ + ] usage: $0 http://url unicodebug1.txt result.txt\n"; 	exit;	 }

# Subroutine
sub search{
		foreach my $dir(@dirs) {
			print "$url/$dir";
			my $response = $ua->get("$url/$dir");
			if($response->status_line !~ m/^404/){
				push(@found,"$url/$dir");
                                	}
	  }	

	  }
