#!/bin/bash
############################
# @author Elias De Hondt   #
# @see https://eliasdh.com #
# @since 18/10/2024        #
############################
# encryptoRevealo.sh

source ./variables.conf
source ./functions.conf

get_user_input() { # Function: Get user input.
    local CHOICE
    local PASSWORD
    local DIRECTORY

    if [ "$1" == "encrypt" ]; then # Get a list of files and directories in the current directory
        local files=($(find . -maxdepth 1 ! -name "*.tar.gz.gpg"))

        if [ ${#files[@]} -eq 0 ]; then
            error_exit_ui "No files or directories found."
        fi

        local menu_options=()
        for file in "${files[@]}"; do
            menu_options+=("$file" "$file")
        done

        CHOICE=$(dialog --title "Select File or Directory" --menu "Choose a file or directory to encrypt:" 15 50 ${#menu_options[@]} "${menu_options[@]}" 3>&1 1>&2 2>&3 3>&-)
        if [ -z "$CHOICE" ]; then
            error_exit_ui "No file or directory selected."
        fi
        DIRECTORY="$CHOICE"

        PASSWORD=$(dialog --title "Enter Password" --passwordbox "Enter the password:" 8 40 3>&1 1>&2 2>&3 3>&-)
        if [ -z "$PASSWORD" ]; then
            error_exit_ui "No password provided."
        fi
    elif [ "$1" == "decrypt" ]; then # Get a list of encrypted files in the current directory
        local files=($(ls -p | grep ".tar.gz.gpg" | tr '\n' ' '))

        if [ ${#files[@]} -eq 0 ]; then
            error_exit_ui "No encrypted files found."
        fi

        local menu_options=()
        for file in "${files[@]}"; do
            menu_options+=("$file" "$file")
        done

        CHOICE=$(dialog --title "Select Encrypted File" --menu "Choose a file to decrypt:" 15 60 ${#menu_options[@]} "${menu_options[@]}" 3>&1 1>&2 2>&3 3>&-)
        if [ -z "$CHOICE" ]; then
            error_exit_ui "No file selected."
        fi
        DIRECTORY="${CHOICE%.tar.gz.gpg}"

        PASSWORD=$(dialog --title "Enter Password" --passwordbox "Enter the password:" 8 40 3>&1 1>&2 2>&3 3>&-)
        if [ -z "$PASSWORD" ]; then
            error_exit_ui "No password provided."
        fi
    fi

    echo "$DIRECTORY" "$PASSWORD" # Return directory and password via stdout
}

encrypt_directory() { # Function: Encrypt a directory.
    if [ -e "$1" ]; then
        dialog --infobox "Encrypting: $1" 5 40
        tar -czvf "$1.tar.gz" "$1" > /dev/null 2>&1
        rm -r "$1"
        echo "$2" | gpg --batch --yes --passphrase-fd 0 --symmetric --cipher-algo AES256 "$1.tar.gz"
        rm "$1.tar.gz"
        gpgconf --kill gpg-agent
        dialog --msgbox "Encryption complete: $1.tar.gz.gpg" 5 60
    else
        error_exit_ui "File or directory does not exist: $1"
    fi
}

decrypt_directory() { # Function: Decrypt a directory.
    local PASSWORD=$2
    if [ -f "$1.tar.gz.gpg" ]; then
        while true; do
            dialog --infobox "Decrypting file: $1.tar.gz.gpg" 5 40
            if echo "$PASSWORD" | gpg --batch --yes --passphrase-fd 0 --output "$1.tar.gz" --decrypt "$1.tar.gz.gpg"; then
                rm "$1.tar.gz.gpg"
                tar -xzvf "$1.tar.gz" > /dev/null 2>&1
                rm "$1.tar.gz"
                dialog --msgbox "Decryption complete: $1 is restored" 5 60
                break
            else
                dialog --msgbox "Incorrect password. Please try again." 5 60
                PASSWORD=$(dialog --title "Enter Password" --passwordbox "Enter the password:" 8 40 3>&1 1>&2 2>&3 3>&-)
                if [ -z "$PASSWORD" ]; then
                    dialog --msgbox "No password provided." 5 60
                    clear
                    exit 1
                fi
            fi
        done
    else
        error_exit_ui "Encrypted file does not exist: $1.tar.gz.gpg"
        clear
        exit 1
    fi
}

function main() { # Function: Main function.
    check_privileges
    check_dependencies "dialog" "gpg" "tar" "find"
    local CHOICE=$(dialog --menu "Choose an option" 15 60 2 1 "Encrypt a file/directory" 2 "Decrypt a file/directory" 3>&1 1>&2 2>&3 3>&-)

    case $CHOICE in
        1)
            local USER_INPUT=$(get_user_input "encrypt")
            encrypt_directory $USER_INPUT
            ;;
        2)
            local USER_INPUT=$(get_user_input "decrypt")
            decrypt_directory $USER_INPUT
            ;;
        *)
            dialog --msgbox "Invalid choice." 5 60
            ;;
    esac
    clear
}

main