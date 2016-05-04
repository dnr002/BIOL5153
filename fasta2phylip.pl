#!/usr/bin/perl

use strict;
use warnings;

my $usage = "$0 fasta-file\n";
$ARGV[0] or die $usage;

my $fasta_file = shift @ARGV;

my $header;
my %sequences;
my $num_species = 0;
my $alignment_length =0;


#open the fasta file
open(FASTA, $fasta_file ) || die "Can't Open $fasta_file, duh: $!\n";

while( my $line = <FASTA> ){

 chomp $line;

  #check for FASTA header
  if( $line =~ /\A>(.*)\Z/ ){
   $header = $1;
   $header =~ s/\s+/_/g;   
    print $header, "\n";
   }else{ #if not a FASTA header, then DNA sequence
   print "$header $line\n"; 
   $sequences{$header} .= $line, "\n"; 
  # print $line;
}
}

close FASTA;
$num_sequences++;
$alignment_length++;
print "$num_species $alignment_length\n";

#foreach my $species (keys %sequences ){
# print ">$species\n";
 #print $species, "\t", $sequences{$species}, "\n";
  #print $species, "\t", $sequences{$species}, "\n";
#}

exit;

