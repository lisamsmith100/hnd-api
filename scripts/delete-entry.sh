#!/bin/bash
#curl --include --request DELETE http://localhost:4741/entries/4
#ID=4 sh scripts/delete-entry.sh

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/entries/"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
