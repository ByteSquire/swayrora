#!/usr/bin/bash
set -euo pipefail

image=$1

if [[ ${image} =~ "bluefin" ]]; then
    echo silverblue
elif [[ ${image} =~ "aurora" ]]; then
    echo kinoite
elif [[ ${image} =~ "swayrora" ]]; then
    echo sericea
else
    exit 1
fi
