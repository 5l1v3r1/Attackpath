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

# Libraries
use HTTP::Request::Common;
use LWP::UserAgent;
use LWP::Simple qw($ua get);


# User Agent
$ua = LWP::UserAgent->new;
$ua->agent('Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.3) Gecko/20070309 Firefox/2.0.0.9');

# Clear the screen and jump to 0,0
print "\033[2J";    
print "\033[0;0H";

# Software Info
print "\n\n					#################################\n					[     Path Traversal Bruter     ] \n					[     Coded By Haroon Awan	]\n					[ Mail\: mrharoonawan\@gmail.com 	]\n					[Official Web\:fb.com\/mubassir.py]\n					#################################\n\n\n";
print "[ + ] Starting\n";



# Array
my @found;

# Calling Subroutines
&usage unless @ARGV==3;

# Argv List
my $url = $ARGV[0];
my $filelist = $ARGV[1];
my $results = $ARGV[2];


# File handler
open(ifile, "<$filelist") || die "Couldn't open file\n";
my @file =<ifile>;
close("ifile");

# Calling Subrountine
&search;

# Subroutine
sub usage{ 	print "[ + ] usage: $0 http://Address brutelist.txt result.txt\n"; 	exit;	 }


# Subroutine
sub search{
			print "[ + ] Address: $file";
		foreach my $file(@file) {
			print "$url/$file";
			my $response = $ua->get("$url/$file");
			if($response->status_line ne RC_OK)  {
			print "[ ! ] HTTP Status: 404 | Testing Path: "; 
						             }
			else {
			if ($response->status_line eq RC_OK) {
			push(@found,"$url/$file"); 
			print " \n[ * ] HTTP Status: 200 | Tested Path: "; }
			
                        			}
                                				}
}
print "\n\n[ ~ ] Couldn't find any bug, existing!\n\n";
exit;
