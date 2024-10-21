#!/bin/bash
############################
# @author Elias De Hondt   #
# @see https://eliasdh.com #
# @since 18/10/2024        #
############################
# menu.sh

source ./variables.conf
source ./functions.conf

function main() { # Function: Main function.
    check_privileges
    check_dependencies "dialog" "find" "sed"

    dialog --title "Welcome to the Tools menu!" --msgbox "\n$ASCII_LOGO\n" 15 62

    local FILES=$(find "$DIRECTORY" -type f \( -name "*.sh" -o -name "*.py" \) | sed 's|^.*\/||')
    local DIRECTORY="https://tools.eliasdh.com"

    if [ -z "$FILES" ]; then
        error_exit_ui "No executable files were found."
        exit 0
    fi

    local CHOICE=$(dialog --title "Select a Script" --menu "Choose a script to run:" 15 50 10 $FILES 3>&1 1>&2 2>&3)

    if [ $? -ne 0 ]; then
        error_exit_ui "No script selected."
        exit 0
    fi

    local FILE_PATH="$DIRECTORY/$CHOICE"
    bash "$FILE_PATH"
    exit 0
}

main