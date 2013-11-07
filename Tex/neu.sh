#!/bin/bash

set -e

if [[ -z "$1" ]]; then
    echo "usage: $0 <name>"
    echo "Kein Name gegeben!"
fi

echo "Lege neuen Ordner an..."
cp -rvi Vorlage $1
echo "Fertig!"
