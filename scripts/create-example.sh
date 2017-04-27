#!/bin/bash
#TOKEN=BAhJIiU4MzBhZGRhMjhkZmNiMjRkYzIxOWFkYmQxOTY0ZDA1NAY6BkVG--db15346abfd71350ee277404075ca879f515ae22 TEXT="example of adding something" sh scripts/create-example.sh
#TOKEN=BAhJIiU4MzBhZGRhMjhkZmNiMjRkYzIxOWFkYmQxOTY0ZDA1NAY6BkVG--db15346abfd71350ee277404075ca879f515ae22
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/examples"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "example": {
      "text": "'"${TEXT}"'"
    }
  }'

echo
