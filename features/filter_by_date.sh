#!/bin/bash
# Filter by Date Range feature
# Description: Filters Wayback Machine URLs by a specific date range.

echo "Enter the start date (YYYYMMDD):"
read start_date
echo "Enter the end date (YYYYMMDD):"
read end_date

echo "Enter your Domain Name:"
read domain

curl "http://web.archive.org/cdx/search/cdx?url=*.$domain/*&output=json&fl=original&collapse=urlkey&from=$start_date&to=$end_date" -s -k --insecure --path-as-is \
    | sed 's/\["//g' \
    | sed 's/"\],//g' \
    | sort -u \
    | tee -a "$domain-$start_date-to-$end_date.txt"

echo "Crawling complete. The results are saved in $domain-$start_date-to-$end_date.txt"
