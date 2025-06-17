#!/bin/bash

# unzip the community notes file
start_date=$(date -d "2021-01-23T00:00:00Z" +%s000)
end_date=$(date -d "2021-07-31T23:59:59Z" +%s000)


unzip -p notes-00000.zip | awk -F "\t" -v start="$start_date" -v end="$end_date" 'NR == 1 || ($3 >= start && $3 <= end)' >> notes.tsv


