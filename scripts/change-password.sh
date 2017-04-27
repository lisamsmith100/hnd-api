#!/bin/bash
#ID=1 OLDPW=passy NEWPW=newpassy TOKEN=BAhJIiU1YTYwOTQ5YWRmZjNkMTQyNzAyODkwOWMxODFiZWEzYQY6BkVG--b06870db53bc3f199cdc30a727768b0b4802ba0e sh scripts/change-password.sh

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/change-password"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "'"${OLDPW}"'",
      "new": "'"${NEWPW}"'"
    }
  }'

echo
