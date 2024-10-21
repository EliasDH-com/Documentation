#!/bin/bash
############################
# @author Elias De Hondt   #
# @see https://eliasdh.com #
# @since 18/10/2024        #
############################
# weather.sh

BASE_URL="https://raw.githubusercontent.com/EliasDH-com/Documentation/refs/heads/main/Tools"
curl -o variables.conf "$BASE_URL/variables.conf" > /dev/null 2>&1
curl -o functions.conf "$BASE_URL/functions.conf" > /dev/null 2>&1

source variables.conf
source functions.conf

declare -A LOCATIONS=(
    ["New York"]="5128581"
    ["Brussels"]="2800866"
    ["London"]="2643743"
    ["Tokyo"]="1850147"
    ["Sydney"]="2147714"
    ["Paris"]="2988507"
    ["Berlin"]="2950159"
)

setup_menuoptions() { # Function: Setup menu options.
    local MENU_OPTIONS=()
    for i in "${!LOCATIONS[@]}"; do
        MENU_OPTIONS+=("$i" "$i")
    done
    echo "${MENU_OPTIONS[@]}"
}

get_weather() { # Function: Get weather information.
    local CITY_NAME=$1
    local CITY_ID=$2

    local RESPONSE=$(curl -s "$BASE_URL?id=$CITY_ID&appid=$API_KEY&units=metric")

    local WEATHER=$(echo $RESPONSE | jq '.weather[0].description' | tr -d '"')
    local TEMPERATURE=$(echo $RESPONSE | jq '.main.temp' | tr -d '"')

    dialog --msgbox "Weer in $CITY_NAME: $WEATHER\nTemperatuur: ${TEMPERATURE}°C" 10 50
}

main() { # Function: Main function.
    check_privileges
    check_dependencies "dialog" "gpg" "jq"

    local MENU_OPTIONS=($(setup_menuoptions))

    local CHOICE=$(dialog --title "Weather Locations" --menu "Choose a location to pick it up again:" 15 50 ${#MENU_OPTIONS[@]} "${MENU_OPTIONS[@]}" 3>&1 1>&2 2>&3 3>&-)

    if [ -z "$CHOICE" ]; then error_exit_ui "No location selected."; fi

    get_weather "$CHOICE" "${LOCATIONS[$CHOICE]}"
    remove_files "variables.conf" "functions.conf"
    clear
}

main