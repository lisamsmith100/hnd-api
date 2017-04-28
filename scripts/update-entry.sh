#!/bin/bash
# curl --include --request PATCH http://localhost:4741/entries/2 \
#   --header "Content-Type: application/json" \
#   --data '{
#     "entry": {
#       "title": "this is an update"
#     }
#   }'
TOKEN="BAhJIiU3NzgyY2YxZWI2YTZhZTdkMWJjMjE4YTVkNWYxNmE1OQY6BkVG--d8072a1c2927df57328557bc664f88ab6b9a2d30"
ID="5"
TITLE="abcdefghijklmnopqrstuvwxyz"
BACKSTORY="this is an updated backstory"
STOPPER="this is not updating"
STATUS="incomplete"
DATE_ADDED="2017-04-27"
DELETED_FLAG="false"

# :backstory, :stopper, :status, :date_added, :deleted_flag
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/entries"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "entries": {
      "title": "'"${TITLE}"'"
      "backstory": "'"${BACKSTORY}"'",
      "stopper": "'"${STOPPER}"'",
      "status": "'"${STATUS}"'",
      "date_added": "'"${DATE_ADDED}"'",
      "deleted_flag": "'"${DELETED_FLAG}"'"
    }
  }'

  echo
