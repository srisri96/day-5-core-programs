#!/bin/bash

echo "WELCOME TO FLIP COIN SIMULATOR"

declare -A COUNT

HHH=0;
HHT=0;
HTT=0;
HTH=0;
THH=0;
TTH=0;
TTT=0;
THT=0;
for (( i=0; $i<10; i++ ))
do
#checking doublet combination HH,TT.TH.HT
flipCoinCheck=$((RANDOM%2))
flipCoinCheck1=$((RANDOM%2))
flipCoinCheck2=$((RANDOM%2))
if [ $flipCoinCheck -eq 1 ] && [ $flipCoinCheck1 -eq 1 ] && [ $flipCoinCheck2 -eq 1 ]
then
	echo "HHH";
	COUNT[HHH]=$((HHH++))
elif [ $flipCoinCheck -eq 1 ] && [ $flipCoinCheck1 -eq 1 ] && [ $flipCoinCheck2 -eq 0 ]
then
	echo "HHT";
	COUNT[HHT]=$((HHT++))
elif [ $flipCoinCheck -eq 1 ] && [ $flipCoinCheck1 -eq 0 ] && [ $flipCoinCheck2 -eq 0 ]
then
	echo "HTT";
	COUNT[HTT]=$((HTT++))
elif [ $flipCoinCheck -eq 0 ] && [ $flipCoinCheck1 -eq 0 ] && [ $flipCoinCheck2 -eq 0 ]
then
	echo "TTT";
	COUNT[TTT]=$((TTT++))
elif [ $flipCoinCheck -eq 0 ] && [ $flipCoinCheck1 -eq 0 ] && [ $flipCoinCheck2 -eq 1 ]
then
        echo "TTH";
        COUNT[TTH]=$((TTH++))
elif [ $flipCoinCheck -eq 0 ] && [ $flipCoinCheck1 -eq 1 ] && [ $flipCoinCheck2 -eq 1 ]
then
        echo "THH";
        COUNT[THH]=$((THH++))
elif [ $flipCoinCheck -eq 0 ] && [ $flipCoinCheck1 -eq 1 ] && [ $flipCoinCheck2 -eq 0 ]
then
        echo "THT";
        COUNT[THT]=$((THT++))
else
        echo "HTH";
        COUNT[HTH]=$((HTH++))

fi
