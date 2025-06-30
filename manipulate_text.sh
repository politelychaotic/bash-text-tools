#!/bin/bash


echo -e "\ncat out text:";
cat data.txt;

sleep 5;

echo -e "\nUse awk to print second column:";
awk '{print $2}' data.txt;

sleep 5;

echo -e "\nUse awk to print second column followed by first:";
awk '{print $2 "\t" $1}' data.txt;

sleep 5;

echo -e "\nUse awk to print second column followed by the first\nPIPE to sort by numerical order";
awk '{print $2 "\t" $1}' data.txt | sort -n;


sleep 5;

echo -e "\ncat text again";
cat data.txt


sleep 5;

echo -e "\nUse sed to replace Orange with Red";
sed s/Orange/Red/ data.txt;


sleep 5;

echo -e "\nUse sed to replace Red with Orange";
sed s/Red/Orange/ data.txt;

sleep 5;

echo -e "\ncat out file again:";
cat data.txt;

sleep 5;

echo -e "\nCreate a ENV Variable HEAD with the first line of data.txt stored";
HEAD=$(head -n1 data.txt);
echo -e "\nHEAD=$HEAD";

sleep 5;

echo -e "\nUse sort to sort first column(w/o column headers):";
echo; echo "$HEAD"; tail -n +2 data.txt | sort;

sleep 5;

echo -e "\nUse sort to sort column 2 by numerical order(w/o column headers):";
echo; echo "$HEAD"; tail -n +2 data.txt | sort -k2 -n;

sleep 5;

echo -e "\nUse sort to sort column 3 (w/o column headers):";
echo; echo "$HEAD"; tail -n +2 data.txt | sort -k3 -n;

sleep 5;

echo -e "Bye!";
