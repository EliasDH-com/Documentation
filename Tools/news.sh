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
    local RSS_URL_VRT="https://www.vrt.be/vrtnws/nl.rss.headlines.xml"
    local RSS_FILE_VRT="rss_file_vrt.xml"

    curl -s "$RSS_URL_VRT" -o "$RSS_FILE_VRT"
    local NAME_OUTLET=$(grep -oPm1 "(?<=<title type=\"text\">)(.*)(?=</title>)" "$RSS_FILE_VRT")



    local NEWS_TITLE=""
    local NEWS_LIST=""

    while IFS= read -r line; do
        if [[ $line =~ \<title\>(.*)\<\/title\> ]]; then
            NEWS_TITLE="${BASH_REMATCH[1]}"
            NEWS_LIST+="$NEWS_TITLE\n"
        fi
    done < "$RSS_FILE_VRT"

    dialog --title "VRT Nieuws" --msgbox "$NEWS_LIST" 20 80

    remove_files "$RSS_FILE_VRT"
}

main() { # Function: Main function.
    check_privileges
    check_dependencies "dialog" "curl" "gpg"

    get_vrt_news

    remove_files "variables.conf" "functions.conf"
    clear
    exit 0
}

main
