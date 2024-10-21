#!/bin/bash
############################
# @author Elias De Hondt   #
# @see https://eliasdh.com #
# @since 18/10/2024        #
############################
# menu.sh

BASE_URL="https://raw.githubusercontent.com/EliasDH-com/Documentation/refs/heads/main/Tools"

curl -o variables.conf "$BASE_URL/variables.conf" > /dev/null 2>&1
curl -o functions.conf "$BASE_URL/functions.conf" > /dev/null 2>&1

source variables.conf
source functions.conf

function main() { # Function: Main function.
    check_privileges
    check_dependencies "dialog" "curl"

    dialog --title "Welcome to the Tools menu!" --msgbox "\n$ASCII_LOGO\n" 20 62

    local MENU_OPTIONS=()
    for file in "${FILES_ON_GITHUB[@]}"; do
        local SCRIPT_NAME=$(basename "$file")

        if [[ "$SCRIPT_NAME" == *.py ]]; then local TYPE="Python"
        elif [[ "$SCRIPT_NAME" == *.sh ]]; then local TYPE="Shell"
        else local TYPE="Unknown"; fi

        MENU_OPTIONS+=("$SCRIPT_NAME" "$TYPE")
    done

    local CHOICE=$(dialog --title "Select a Script" --menu "Choose a script to run:" 15 50 "${#MENU_OPTIONS[@]}" "${MENU_OPTIONS[@]}" 3>&1 1>&2 2>&3)

    if [ -z "$CHOICE" ]; then error_exit_ui "No script selected."; fi
    error_exit_ui "$CHOICE"

    if [[ "$CHOICE" == *.sh ]]; then bash <(curl -s $BASE_URL/$CHOICE)
    elif [[ "$CHOICE" == *.py ]]; then python3 <(curl -s $BASE_URL/$CHOICE)
    else error_exit_ui "Unknown file type selected."; fi

    remove_files "variables.conf" "functions.conf" "$CHOICE"
    exit 0
}

main