#!/bin/bash
# Script Name: main.sh
# Description: Main script for Wayback Machine crawling with various features.
# Author: lmcodeofpwnosec
# Date: 18/10/2024

# Color Variables
CYAN='\033[0;36m'
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# Display ASCII logo
function display_logo() {
    echo -e "${CYAN}"
    echo "██╗    ██╗ █████╗ ██╗   ██╗██████╗  █████╗ ███████╗██╗  ██╗"
    echo "██║    ██║██╔══██╗██║   ██║██╔══██╗██╔══██╗██╔════╝██║  ██║"
    echo "██║ █╗ ██║███████║██║   ██║██████╔╝███████║███████╗███████║"
    echo "██║███╗██║██╔══██║██║   ██║██╔═══╝ ██╔══██║╚════██║██╔══██║"
    echo "╚███╔███╔╝██║  ██║╚██████╔╝██║     ██║  ██║███████║██║  ██║"
    echo " ╚══╝╚══╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝     ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝"
    echo -e "${NC}"
}

# Display copyright, author, and current date/time
function display_info() {
    echo "==============================================================="
    echo "Copyright (C) 2024 by lmcodeofpwnosec"
    echo "Date: $(date +"%Y-%m-%d %H:%M:%S")"
    echo "==============================================================="
}

# Display help and usage information
function display_help() {
    echo "Usage: ./wayback.sh [option]"
    echo
    echo "Options:"
    echo "  1) Filter by Date Range"
    echo "  2) Include HTTP Status Codes"
    echo "  3) Filter by MIME Type"
    echo "  4) Track URL Changes Over Time"
    echo "  5) Download Archived Pages"
    echo "  6) Enable Verbose Mode"
    echo "  -help  Show this help menu"
    echo "  -exit  Exit the script"
    echo
    echo "Description:"
    echo "  This script retrieves URLs archived in the Wayback Machine and offers features"
    echo "  such as filtering by date range, tracking changes, including HTTP status codes,"
    echo "  filtering by MIME type, and more."
}

# Main menu
function main_menu() {
    echo -e "${CYAN}Select a feature:${NC}"
    echo "1) Filter by Date Range"
    echo "2) Include HTTP Status Codes"
    echo "3) Filter by MIME Type"
    echo "4) Track URL Changes Over Time"
    echo "5) Download Archived Pages"
    echo "6) Enable Verbose Mode"
    echo "7) Exit"
    read -p "Enter your choice: " choice

    case $choice in
        1) source ./features/filter_by_date.sh ;;
        2) source ./features/include_status.sh ;;
        3) source ./features/filter_by_mimetype.sh ;;
        4) source ./features/track_changes.sh ;;
        5) source ./features/download_archived.sh ;;
        6) source ./features/verbose_mode.sh ;;
        7) echo -e "${GREEN}Exiting...${NC}"; exit 0 ;;
        *) echo -e "${RED}Invalid choice. Please try again.${NC}"; main_menu ;;
    esac
}

# Check for help option
if [[ "$1" == "-help" ]]; then
    display_help
    exit 0
fi

# Check for exit option
if [[ "$1" == "-exit" ]]; then
    echo "Exiting..."
    exit 0
fi

# Run the ASCII art, info, and main menu
display_logo
display_info
main_menu
