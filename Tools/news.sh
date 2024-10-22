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

get_news() { # Function: Fetch Belgian news from RSS feeds.
    local RSS_URL="https://www.vrt.be/vrtnws/nl.rss.headlines.xml"
    local RESPONSE=$(curl -s "$RSS_URL")

    local NEWS=$(echo "$RESPONSE" | grep -oP "<title>\K(.*)(?=</title>)" | sed -n '2,6p')
    local NEWS_COUNT=$(echo "$NEWS" | wc -l)

    local NEWS_ARRAY=()
    while IFS= read -r LINE; do
        NEWS_ARRAY+=("$LINE")
    done <<< "$NEWS"

    local NEWS_LIST=""
    for ((i = 0; i < NEWS_COUNT; i++)); do
        NEWS_LIST+="$((i + 1)). ${NEWS_ARRAY[$i]}\n"
    done

    dialog --title "Belgian News" --msgbox "$NEWS_LIST" 20 70
}

main() { # Function: Main function.
    check_privileges
    check_dependencies "dialog" "curl" "gpg"

    get_news

    remove_files "variables.conf" "functions.conf"
    clear
    exit 0
}

main
