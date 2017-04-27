#!/bin/bash
#TITLE="first shot at creating an entry for user 4" BACKSTORY="Backstory is that this is a class project deuce" sh scripts/create-entry.sh
#TITLE="second shot at creating an entry for user 4" BACKSTORY="Backstory is that this is a class project deuce" sh scripts/create-entry.sh
#TITLE="third shot at creating an entry for user 4" BACKSTORY="Backstory is that this is a class project deuce" sh scripts/create-entry.sh
#TITLE="fourth shot at creating an entry for user 4" BACKSTORY="Backstory is that this is a class project deuce" sh scripts/create-entry.sh
#curl --include --request GET http://localhost:4741/entries

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/entries"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
