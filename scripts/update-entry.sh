#!/bin/bash
# curl --include --request PATCH http://localhost:4741/entries/2 \
#   --header "Content-Type: application/json" \
#   --data '{
#     "entry": {
#       "title": "this is an update"
#     }
#   }'
# ID=7 TITLE="updating this title with new code" BACKSTORY="this is an updated backstory" STOPPER="this is not updating" STATUS="incomplete" DATE_ADDED="2017-04-27" DELETED_FLAG=false sh scripts/update-entry.sh
# :backstory, :stopper, :status, :date_added, :deleted_flag
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/entries"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
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
