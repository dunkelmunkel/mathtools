#!/bin/sh

#-------------------------------------------------------------
#
# pi.sh ANZAHL_DEZ_STELLEN
#
# Gibt Anzahl Stellen von PI aus
#
#-------------------------------------------------------------

PI=`echo "scale=$1; 4*a(1)" | bc -l`
echo $PI | sed -e 's/[^0-9.]//g'