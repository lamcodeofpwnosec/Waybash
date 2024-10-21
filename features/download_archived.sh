#!/bin/bash
# Download Archived Pages feature

echo "Enter your Domain Name:"
read domain

mkdir -p "$domain-archived-pages"
cat "$domain.txt" | while read url; do
    wget "http://web.archive.org/web/$url" -P "$domain-archived-pages/"
done

echo "Download complete. Archived pages are saved in the $domain-archived-pages/ folder."
