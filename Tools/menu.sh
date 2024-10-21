#!/bin/bash
############################
# @author Elias De Hondt   #
# @see https://eliasdh.com #
# @since 18/10/2024        #
############################
# menu.sh

RAW_GITHUB_URL="https://raw.githubusercontent.com/EliasDH-com/Documentation/refs/heads/main/Tools"
curl -o variables.conf "$RAW_GITHUB_URL/variables.conf" > /dev/null 2>&1
curl -o functions.conf "$RAW_GITHUB_URL/functions.conf" > /dev/null 2>&1

source ./variables.conf
source ./functions.conf

function main() { # Function: Main function.
    check_privileges
    check_dependencies "dialog" "curl"

    dialog --title "Welcome to the Tools menu!" --msgbox "\n$ASCII_LOGO\n" 20 62

    local MENU_OPTIONS=()
    for file in "${FILES_ON_GITHUB[@]}"; do
        local SCRIPT_NAME=$(basename "$file")

        if [[ "$SCRIPT_NAME" == *.sh ]]; then local TYPE="Bash"
        elif [[ "$SCRIPT_NAME" == *.py ]]; then local TYPE="Python"
        else local TYPE="Unknown"; fi

        MENU_OPTIONS+=("$SCRIPT_NAME" "$TYPE")
    done

    local CHOICE=$(dialog --title "Select a Script" --menu "Choose a script to run:" 15 50 "${#MENU_OPTIONS[@]}" "${MENU_OPTIONS[@]}" 3>&1 1>&2 2>&3)

    if [ -z "$CHOICE" ]; then error_exit_ui "No script selected."; fi

    if [[ "$CHOICE" == *.sh ]]; then bash "$RAW_GITHUB_URL/$CHOICE"
    elif [[ "$CHOICE" == *.py ]]; then python3 "$RAW_GITHUB_URL/$CHOICE"
    else error_exit_ui "Unknown script type."; fi

    remove_files "variables.conf" "functions.conf"
    exit 0
}

main