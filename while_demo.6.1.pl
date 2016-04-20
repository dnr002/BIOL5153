#! /usr/bin/perl

# Add up some odd numbers
print "What count? ";

$count = ucfirst( <STDIN> );

chomp $count;

print "Starting count is $count\n";

$sum = 0;

print "Max length of loop? ";
$max = ucfirst( <STDIN> );

chomp $max;

print "Max Length is $max\n";

while( $count < $max ){
  print $count, "\n";
  $sum += $count;
  $count += 1;
}

print "The final count: $count\n";
print "The sum total was: $sum\n";

exit;

