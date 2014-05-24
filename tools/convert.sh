#!/bin/bash

echo "Converting xlsx to csv...."

for f in *.xlsx; do
    echo "  $f ${f%.xlsx}.csv"
    ssconvert "$f" "${f%.xlsx}.csv";
done

for f in *.xls; do
    echo "  $f ${f%.xls}.csv"
    ssconvert "$f" "${f%.xls}.csv";
done


echo "Renaming txt to csv..."
for f in *.txt; do
    echo "  $f --> ${f%.txt}.csv";
    mv "$f" "${f%.txt}.csv";
done
