#!/bin/bash
# Script Name: wayback_crawler.sh
# Description: This script crawls URLs for a specified target domain from the Wayback Machine.
#              It retrieves archived URLs and outputs them to a text file.
# Author: lmcodeofpwnosec
# Date: 18/10/2024

# Prompt the user to enter a domain name
echo "Enter your Domain Name:"
read domain

# Use curl to fetch archived URLs from the Wayback Machine API and process the results
curl "http://web.archive.org/cdx/search/cdx?url=*.$domain/*&output=json&fl=original&collapse=urlkey" -s -k --insecure --path-as-is \
    | sed 's/\["//g' \
    | sed 's/"\],//g' \
    | sort -u \
    | tee -a "$domain.txt"

# Inform the user that the process is complete
echo "Crawling complete. The results are saved in $domain.txt"
