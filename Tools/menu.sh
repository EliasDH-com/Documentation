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

    dialog --title "Welcome to the Tools menu!" --msgbox "\n$ASCII_LOGO\n" 20 62

    local EXTENSIONS=("*.sh" "*.py")
    local DIRECTORY="/home/$USER/tools"

    # Controleer of de directory bestaat
    if [ ! -d "$DIRECTORY" ]; then
        error_exit_ui "Directory $DIRECTORY does not exist."
        exit 1
    fi

    # Zoek naar uitvoerbare bestanden
    local FILES=$(find "$DIRECTORY" -type f \( -name "${EXTENSIONS[0]}" -o -name "${EXTENSIONS[1]}" \) | grep -v "menu.sh" | sort)

    if [ -z "$FILES" ]; then
        error_exit_ui "No executable files were found."
        exit 0
    fi

    # Bereid de keuzes voor in dialog
    local MENU_OPTIONS=()
    while IFS= read -r file; do
        MENU_OPTIONS+=("$file" "$(basename "$file")")  # Voeg het volledige pad en de naam toe
    done <<< "$FILES"

    # Gebruik de opties in de dialog
    local CHOICE=$(dialog --title "Select a Script" --menu "Choose a script to run:" 15 50 "${#MENU_OPTIONS[@]}" "${MENU_OPTIONS[@]}" 3>&1 1>&2 2>&3)

    if [ $? -ne 0 ]; then
        error_exit_ui "No script selected."
        exit 0
    fi

    # Voer het gekozen script uit
    bash "$CHOICE"
    exit 0
}

main
