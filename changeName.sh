#!/bin/bash
# This script is used to replace a word with another one in filenames and text inside files of a given folder.
# It is useful to rename libraries
if [ "$#" -ne 3 ]; then
	echo "Usage:>changeName.sh <search_word> <replace_word> <folder>"
fi
search=$(echo ${1,,})
replace=$(echo ${2,,})
SEARCH=${search^^}
REPLACE=${replace^^}
FOLDER=$3
files="$(find ${FOLDER} -type f \( -name "*.cpp" -or -name "*.h" -or -name "*.txt" -or -name "*.in" \) )"

# Replace text inside files
for f in ${files}; do 
echo Replacing : $SEARCH by $REPLACE in file: $f
echo Replacing : $search by $replace in file: $f
sed -i -e "s|${SEARCH}|${REPLACE}|" $f
sed -i -e "s|${search}|${replace}|" $f  
done

#for f in $(find ${FOLDER} -type d -name "*${search}*"); do
#echo $f | xargs rename s/${search}/${replace}/
#echo Renamed $f
#done

