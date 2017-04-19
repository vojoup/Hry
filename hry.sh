#!/bin/bash

pocet=`cat hry.txt | wc -l`

for ((i=1 ; i<="$pocet" ; i++))
do
    echo -n "$i "
    sed "$i"'q;d' hry.txt
done

cislo="$(($RANDOM%$pocet))"

if [ $cislo -eq 0 ]
then 
    cislo=2
fi

echo ""
echo -n "Dnes budeme hrat : "
sed "$cislo"'q;d' hry.txt
echo "JEEEEEEJ"
