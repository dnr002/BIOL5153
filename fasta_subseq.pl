#! /usr/bin/perl

print "Which FASTA file? ";

$a = ( <> );

chomp $a;

print "Start Coordinates? ";
$b = ( <> );

print "End Coordinates? ";
$c = ( <> );

print "Forward or Reverse Strand? ";
$d = ( <> );

$line_number = 0;

open ( SEQ, $a ) || die "Can't open $a: $!\n";

while( $line = <SEQ> ) {
 $line_number++;

if ( $line =~ /\A>/ ) {
 $header = $line;
 }else{
 $sequence = $line;
 print $sequence;
}


}
close SEQ;




exit;
