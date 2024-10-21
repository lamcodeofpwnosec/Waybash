#!/bin/bash
# Verbose Mode feature

echo "Enter your Domain Name:"
read domain

curl "http://web.archive.org/cdx/search/cdx?url=*.$domain/*&output=json&fl=original&collapse=urlkey" -v -k --insecure --path-as-is \
    | sed 's/\["//g' \
    | sed 's/"\],//g' \
    | sort -u \
    | tee -a "$domain_verbose.txt"

echo "Verbose crawling complete. The results are saved in $domain_verbose.txt"
