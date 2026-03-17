#!/bin/bash

set -e # stop si erreur
set -u # stop si variable non définie

echo "python run with injecting env"

FILE="$1"

# 1. Vérifier argument
if [ -z "$FILE" ]; then
  echo "Error: no file send"
  exit 1
fi

FILE_PATH="./$FILE"

if [ ! -f "$FILE_PATH" ]; then
  echo "Error: fichier '$FILE_PATH' introuvable"
  exit 1
fi

infisical run -- python $FILE
