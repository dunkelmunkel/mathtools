#!/usr/bin/perl -w

#-------------------------------------------------------------
#
# ggT a b
#
# Euklidischer Algorithmus mit a und b
#
# Autor: Christian Spannagel <spannagel@ph-heidelberg.de>
# Lizenz: CC0
#
#-------------------------------------------------------------


use integer;

$a=$ARGV[0];
$b=$ARGV[1];
$r=0;

print "a\t b\t r\n";

do {
  $q = $a / $b;
  $r= $a - $b * $q;
  print "$a\t $b\t $r\n";
  $a = $b;
  if ($r == 0) { print "ggT($ARGV[0], $ARGV[1]) = $b\n"; }
  $b = $r;
} while ($r > 0);



