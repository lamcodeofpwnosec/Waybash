#!/bin/bash
# Filter by MIME Type feature

echo "Enter your Domain Name:"
read domain
echo "Enter the MIME type to filter (e.g., text/html, image/jpeg):"
read mime_type

curl "http://web.archive.org/cdx/search/cdx?url=*.$domain/*&output=json&fl=original,mimetype&filter=!mimetype:$mime_type&collapse=urlkey" -s -k --insecure --path-as-is \
    | sed 's/\["//g' \
    | sed 's/"\],//g' \
    | sort -u \
    | tee -a "$domain_filtered_by_mime_type.txt"

echo "Crawling complete. The filtered results (MIME type: $mime_type) are saved in $domain_filtered_by_mime_type.txt"
