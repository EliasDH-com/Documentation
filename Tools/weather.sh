#!/bin/bash
############################
# @author Elias De Hondt   #
# @see https://eliasdh.com #
# @since 18/10/2024        #
############################
# weather.sh

RAW_GITHUB_URL="https://raw.githubusercontent.com/EliasDH-com/Documentation/refs/heads/main/Tools"
curl -o variables.conf "$RAW_GITHUB_URL/variables.conf" > /dev/null 2>&1
curl -o functions.conf "$RAW_GITHUB_URL/functions.conf" > /dev/null 2>&1

source ./variables.conf
source ./functions.conf

declare -A locations=(
    ["New York"]="5128581"
    ["Brussels"]="2800866"
    ["London"]="2643743"
    ["Tokyo"]="1850147"
    ["Sydney"]="2147714"
    ["Paris"]="2988507"
    ["Berlin"]="2950159"
)

get_weather() { # Function: Get weather information.
    local CITY_NAME=$1
    local CITY_ID=$2

    # API-aanroep
    local RESPONSE=$(curl -s "$OPENWEATHERMAP_URL_API?id=$CITY_ID&appid=$API_KEY&units=metric")

    # Gegevens extraheren met jq
    local WEATHER=$(echo "$RESPONSE" | jq -r '.weather[0].description')
    local TEMPERATURE=$(echo "$RESPONSE" | jq -r '.main.temp')
    local TEMP_MIN=$(echo "$RESPONSE" | jq -r '.main.temp_min')
    local TEMP_MAX=$(echo "$RESPONSE" | jq -r '.main.temp_max')
    local HUMIDITY=$(echo "$RESPONSE" | jq -r '.main.humidity')

    # Weerbericht weergeven
    dialog --msgbox "Weer in $CITY_NAME:\nBeschrijving: $WEATHER\nTemperatuur: ${TEMPERATURE}°C\nMinimale temperatuur: ${TEMP_MIN}°C\nMaximale temperatuur: ${TEMP_MAX}°C\nVochtigheid: ${HUMIDITY}%" 15 60
}

main() { # Function: Main function.
    check_privileges
    check_dependencies "dialog" "curl" "gpg" "jq"

    local MENU_OPTIONS=()
    for city in "${!locations[@]}"; do
        MENU_OPTIONS+=("$city" "$city")
    done

    local CHOICE=$(dialog --title "Weather Locations" --menu "Choose a location to pick it up again:" 15 50 ${#MENU_OPTIONS[@]} "${MENU_OPTIONS[@]}" 3>&1 1>&2 2>&3 3>&-)

    if [ -z "$CHOICE" ]; then error_exit_ui "No location selected."; fi

    get_weather "$CHOICE" "${locations[$CHOICE]}"
    remove_files "variables.conf" "functions.conf"
    clear
}

main