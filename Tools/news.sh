#!/bin/bash
############################
# @author Elias De Hondt
# @see https://eliasdh.com
# @since 18/10/2024
############################
# news.sh

RAW_GITHUB_URL="https://raw.githubusercontent.com/EliasDH-com/Documentation/refs/heads/main/Tools"
curl -o variables.conf "$RAW_GITHUB_URL/variables.conf" > /dev/null 2>&1
curl -o functions.conf "$RAW_GITHUB_URL/functions.conf" > /dev/null 2>&1

source ./variables.conf
source ./functions.conf

get_vrt_news() {
    local RSS_URL="https://www.vrt.be/vrtnws/nl.rss.headlines.xml"
    local RSS_FILE="news.rss"

    curl -s "$RSS_URL" -o "$RSS_FILE"

    local NEWS_TITLE=$(xmlstarlet sel -t -v "/rss/channel/item[1]/title" "$RSS_FILE")

    dialog --title "VRT NWS" --msgbox "\n$NEWS_TITLE\n" 20 62

    rm "$RSS_FILE"
}

main() { # Function: Main function.
    check_privileges
    check_dependencies "dialog" "curl" "gpg" "xmlstarlet"

    get_vrt_news

    remove_files "variables.conf" "functions.conf"
    clear
    exit 0
}

main
