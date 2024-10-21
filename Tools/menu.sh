#!/bin/bash
############################
# @author Elias De Hondt   #
# @see https://eliasdh.com #
# @since 18/10/2024        #
############################
# menu.sh

curl -o variables.conf https://raw.githubusercontent.com/EliasDH-com/Documentation/refs/heads/main/Tools/variables.conf > /dev/null 2>&1
curl -o functions.conf https://raw.githubusercontent.com/EliasDH-com/Documentation/refs/heads/main/Tools/functions.conf > /dev/null 2>&1

source variables.conf
source functions.conf

function main() { # Function: Main function.
    check_privileges
    check_dependencies "dialog" "find" "sed"

    dialog --title "Welcome to the Tools menu!" --msgbox "\n$ASCII_LOGO\n" 20 62

    local EXTENSIONS=("*.sh" "*.py")
    local DIRECTORY="/home/$USER/tools"

    if [ ! -d "$DIRECTORY" ]; then error_exit_ui "Directory $DIRECTORY does not exist."; fi

    local FILES=$(find "$DIRECTORY" -type f \( -name "${EXTENSIONS[0]}" -o -name "${EXTENSIONS[1]}" \) | grep -v "$0" | sort)

    if [ -z "$FILES" ]; then error_exit_ui "No executable files were found."; fi

    local MENU_OPTIONS=()
    while IFS= read -r file; do
        local SCRIPT_NAME=$(basename "$file")

        if [[ "$SCRIPT_NAME" == *.py ]]; then local TYPE="Python"
        elif [[ "$SCRIPT_NAME" == *.sh ]]; then local TYPE="Shell"
        else local TYPE="Unknown"; fi

        MENU_OPTIONS+=("$SCRIPT_NAME" "$TYPE")
    done <<< "$FILES"

    local CHOICE=$(dialog --title "Select a Script" --menu "Choose a script to run:" 15 50 "${#MENU_OPTIONS[@]}" "${MENU_OPTIONS[@]}" 3>&1 1>&2 2>&3)

    if [ -z "$CHOICE" ]; then error_exit_ui "No script selected."; fi

    bash "$CHOICE"
    remove_files "variables.conf" "functions.conf"
    exit 0
}

main