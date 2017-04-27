#!/bin/bash
#ID=2 sh scripts/get-entry.sh
#TITLE="second shot at creating an entry for user 4" BACKSTORY="Backstory is that this is a class project deuce" sh scripts/create-entry.sh
#TITLE="third shot at creating an entry for user 4" BACKSTORY="Backstory is that this is a class project deuce" sh scripts/create-entry.sh
#TITLE="fourth shot at creating an entry for user 4" BACKSTORY="Backstory is that this is a class project deuce" sh scripts/create-entry.sh

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/entries/:id"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo

# curl --include --request GET http://localhost:4741/entries/2 \


#   --header "Content-Type: application/json" \
#   --data '{
# 	"entr": {
# 		"author": "UPDATE"
# 	}
# }'
