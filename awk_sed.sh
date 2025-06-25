#!/bin/bash


echo -e "cat out text:";
cat data.txt;
echo -e "\n";

sleep 5;

echo -e "Use awk to print second column:";
awk '{print $2}' data.txt;
echo -e "\n";

sleep 5;

echo -e "Use awk to print second column followed by first:";
awk '{print $2 "\t" $1}' data.txt;
echo -e "\n";

sleep 5;

echo -e "Use awk to print second column followed by the first\nPIPE to sort by numerical order";
awk '{print $2 "\t" $1}' data.txt | sort -n;
echo -e "\n";

sleep 5;

echo -e "cat text again";
cat data.txt
echo -e "\n";

sleep 5;

echo -e "Use sed to replace Orange with Red";
sed s/Orange/Red/ data.txt;
echo -e "\n";

sleep 5;

echo -e "Use sed to replace Red with Orange";
sed s/Red/Orange/ data.txt;
echo -e "\n";

sleep 5;

echo -e "Bye!";
