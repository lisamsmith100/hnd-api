#!/bin/bash
#ID=1 TOKEN=BAhJIiU1YTYwOTQ5YWRmZjNkMTQyNzAyODkwOWMxODFiZWEzYQY6BkVG--b06870db53bc3f199cdc30a727768b0b4802ba0e sh scripts/sign-out.sh

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/sign-out"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
