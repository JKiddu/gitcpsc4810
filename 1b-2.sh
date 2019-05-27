#!/usr/bin/env bash
echo -e "Top 3 Flights expected to reach the Destination"
awk -F ',' 'NR==1 {print $18, "count"} {col[$18]++} END {for (i in col) print i, col[i] | "sort -r -n -k2"}' flightdelays.csv | head -n 4 | csvlook

echo -e "Top 3 Flights actually reached the Destination"
awk -F ',' 'NR==1 {print $18, "count"} {if ($22==0) {col[$18]++}} END {for (i in col) print i, col[i] | "sort -r -n -k2"}' flightdelays.csv | head -n 4 | csvlook
