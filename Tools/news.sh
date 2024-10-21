#!/bin/bash
############################
# @author Elias De Hondt   #
# @see https://eliasdh.com #
# @since 18/10/2024        #
############################
# news.sh

BASE_URL="https://raw.githubusercontent.com/EliasDH-com/Documentation/refs/heads/main/Tools"
curl -o variables.conf "$BASE_URL/variables.conf" > /dev/null 2>&1
curl -o functions.conf "$BASE_URL/functions.conf" > /dev/null 2>&1

source ./variables.conf
source ./functions.conf