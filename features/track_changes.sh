#!/bin/bash
# Track URL Changes Over Time feature

echo "Enter your Domain Name:"
read domain
echo "Enter the specific URL to track changes (e.g., /path/to/page):"
read url_path

curl "http://web.archive.org/cdx/search/cdx?url=$domain$url_path&output=json&fl=timestamp,original" -s -k --insecure --path-as-is \
    | sed 's/\["//g' \
    | sed 's/"\],//g' \
    | sort -u \
    | tee -a "$domain$url_path_change_log.txt"

echo "Tracking complete. Changes to $url_path are saved in $domain$url_path_change_log.txt"
