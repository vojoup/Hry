#!/bin/bash

#Pocet polozek v souboru hry .txt
pocet=`cat hry.txt | wc -l`

echo ""

#Vypsani ocislovanych her 
for ((i=1 ; i<="$pocet" ; i++))
do
    echo -n "$i "
    sed "$i"'q;d' hry.txt
done

#Pseudo-nahodne cislo mezi 0 a pocet her
cislo="$(($RANDOM%$pocet))"

#Pokud je toto cislo 0, nastavi se na 2, protoze hra s cislem 0 neni :D
if [ $cislo -eq 0 ]
then 
    cislo=2
fi

#Vypis hry odpovidajici hodnote cisla
echo ""
echo -n "Dnes budeme hrat : "
sed "$cislo"'q;d' hry.txt
echo "JEEEEEEJ"
