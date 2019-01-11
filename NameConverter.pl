#!/usr/bin/perl
#Perl program to shorten name by capitializing and extracting substring(Ex: apple banana cat -> A.B.Cat) 
use strict;
use warnings;

#my $name='mahendra singh dhoni';#Example name to make it M.S.Dhoni
my $name=<STDIN>;

my @names= split(/ /, $name); # splitting of string by space and assigning to array
print(@names,"\n");

foreach my $i (0 .. $#names) {	# for each element in array from size 0 to maximum count($#names) of an array do upper case of first character
    $names[$i] = ucfirst($names[$i]);
    
}

print(@names,"\n");
my $last_item=pop(@names); #popping/extracting the last item of name and assigning to variable 
print(@names,"\n");

foreach my $item (0 .. $#names){ #for each element in array from size 0 to maximum count($#names) extract the substring i.e first character
	$names[$item]=substr($names[$item],0,1);
	
}

print(@names,"\n");
my $original_name=join(".",@names,$last_item);#Joining the shortened characters and firstname
print($original_name,"\n");




