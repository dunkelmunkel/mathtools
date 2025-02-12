#!/bin/sh

#-------------------------------------------------------------------------------------------
# 
# pi-datetest.sh ANZAHL
#
# Testet, ob alle Kombinationen von Tagen und Monaten in den ersten ANZAHL 
# Nachkommestellen von PI vorkommen
#
# Autor: Christian Spannagel <spannagel@ph-heidelberg.de>
# Lizenz: CC0
#
#
#--------------------------------------------------------------------------------------------


days=( 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31)
months=( 1 2 3 4 5 6 7 8 9 10 11 12 )

PI=`echo "scale=$1; 4*a(1)" | bc -l`
PI=`echo $PI | sed -e 's/[^0-9.]//g'`

for month in ${months[*]}
do
   for day in ${days[*]}
   do 
       date="$day$month"
       F=`echo $PI | grep $date`
       if [ "$F" = "" ]
       then
          echo "NICHT GEFUNDEN: $date"
       else
          echo "Datum $day.$month. gefunden!"
       fi
   done
done
