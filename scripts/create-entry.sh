#!/bin/bash
#TITLE="first shot at creating an entry for user 4" BACKSTORY="Backstory is that this is a class project deuce" sh scripts/create-entry.sh
#TITLE="second shot at creating an entry for user 4" BACKSTORY="Backstory is that this is a class project deuce" sh scripts/create-entry.sh
#TITLE="third shot at creating an entry for user 4" BACKSTORY="Backstory is that this is a class project deuce" sh scripts/create-entry.sh
#TITLE="fourth shot at creating an entry for user 4" BACKSTORY="Backstory is that this is a class project deuce" sh scripts/create-entry.sh

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/entries"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "entry": {
      "title": "'"${TITLE}"'",
      "backstory": "'"${BACKSTORY}"'",
      "stopper": "'"${STOPPER}"'",
      "status": "'"${STATUS}"'",
      "deleted_flag": "'"${DELETED_FLAG}"'"
    }
  }'

echo
