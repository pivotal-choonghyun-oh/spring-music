#!/bin/sh

BASE_URL=$1

echo "+====================================================+"
echo "|   Spring Music Integeration Test : V1              |"
echo "|   host : $BASE_URL                                  "
echo "+====================================================+"

rm -f c1.txt step?.out 

echo "  +   "
echo "  +--> Step 1 : Check Spring Music Initial page..."

curl -X GET "http://$BASE_URL/" \
	-f -L -b ./c1.txt -c ./c1.txt -o ./step1.out 

if [ $? -ne 0 ]; then
    echo "                >> FAIL! "
    exit 1
else
    echo "                >> PASS. "
fi

echo "  +--> Step 2 : Verify Home result..."

grep -i "spring music" ./step1.out

if [ $? -ne 0 ]; then
    echo "                >> FAIL! : Expected page is not found!"
    exit 1
else
    echo "                >> PASS. : Expcted page is found."
fi


echo "---- DONE! ---"
