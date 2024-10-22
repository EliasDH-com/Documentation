#!/bin/bash
############################
# @author Elias De Hondt   #
# @see https://eliasdh.com #
# @since 18/10/2024        #
############################
# news.sh

RAW_GITHUB_URL="https://raw.githubusercontent.com/EliasDH-com/Documentation/refs/heads/main/Tools"
curl -o variables.conf "$RAW_GITHUB_URL/variables.conf" > /dev/null 2>&1
curl -o functions.conf "$RAW_GITHUB_URL/functions.conf" > /dev/null 2>&1

source ./variables.conf
source ./functions.conf

function get_vrt_news() { # Function: Get VRT news headlines.
    local RSS_URL_VRT="https://www.vrt.be/vrtnws/nl.rss.headlines.xml"
    local RSS_FILE="vrt_news.xml"

    curl -s "$RSS_URL_VRT" -o "$RSS_FILE"

    local TITLES=()
    local DESCRIPTIONS=()
    local DATES=()
    local LINKS=()

    while IFS= read -r TITLE; do
        TITLES+=("$TITLE")
    done < <(xmllint --xpath "//*[local-name()='entry']/*[local-name()='title']/text()" "$RSS_FILE" 2>/dev/null)

    while IFS= read -r DESCRIPTION; do
        DESCRIPTIONS+=("$DESCRIPTION")
    done < <(xmllint --xpath "//*[local-name()='entry']/*[local-name()='summary']/text()" "$RSS_FILE" 2>/dev/null)

    while IFS= read -r DATE; do
        local FORMATTED_DATE=$(date -d "$DATE" +"%d/%m/%Y %H:%M")
        DATES+=("$FORMATTED_DATE")
    done < <(xmllint --xpath "//*[local-name()='entry']/*[local-name()='published']/text()" "$RSS_FILE" 2>/dev/null)

    while IFS= read -r LINK; do
        LINKS+=("$LINK")
    done < <(xmllint --xpath "//*[local-name()='entry']/*[local-name()='link'][@rel='alternate']/@href" "$RSS_FILE" 2>/dev/null)

    if [[ ${#TITLES[@]} -lt 1 ]]; then
        remove_files "$RSS_FILE"
        error_exit_ui "No news headlines found."
    fi

    local DIALOG_INPUT=()
    for I in "${!TITLES[@]}"; do
        DIALOG_INPUT+=("$I" "${TITLES[$I]}")
    done

    if [[ ${#DIALOG_INPUT[@]} -ge 6 ]]; then
        local SELECTED
        SELECTED=$(dialog --menu "VRT News Headlines" 15 80 10 "${DIALOG_INPUT[@]}" 3>&1 1>&2 2>&3)
        if [[ -n "$SELECTED" ]]; then
            show_article "$SELECTED"
        fi
    else
        remove_files "$RSS_FILE"
        error_exit_ui "Not enough news headlines found."
    fi

    remove_files "$RSS_FILE"
}

function show_article() { # Function: Show full article details.
    local INDEX="$1"
    local TITLE="${TITLES[$INDEX]}"
    local DESCRIPTION="${DESCRIPTIONS[$INDEX]}"
    local DATE="${DATES[$INDEX]}"
    local LINK="${LINKS[$INDEX]}"

    dialog --msgbox "Title: $TITLE\n\nDescription: $DESCRIPTION\n\nDate: $DATE\n\nLink: $LINK" 15 80
}

function main() { # Function: Main function.
    check_privileges
    check_dependencies "dialog" "curl" "xmllint"

    get_vrt_news

    remove_files "variables.conf" "functions.conf"
    clear
    exit 0
}

main