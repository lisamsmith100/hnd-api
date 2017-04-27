#!/bin/bash
# curl --include --request PATCH http://localhost:4741/entries/2 \
#   --header "Content-Type: application/json" \
#   --data '{
#     "entry": {
#       "title": "This is updated through my first update test curl request",
#       "backstory": "testing to update the backstory",
#       "stopper": "not sure how to do this",
#       "status": "not completed",
#       "date_added": "2017-04-27",
#       "deleted_flag": "false"
#     }
#   }'

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/entries/:id"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"
  --data '{
    "entry": {
      "title": "'"${TITLE}"'",
      "backstory": "'"${BACKSTORY}"'",
      "stopper": "'"${STOPPER}"'",
      "status": "'"${STATUS}"'",
      "date_added": "'"${DATE_ADDED}"'",
      "deleted_flag": "'"${DELETED_FLAG}"'"
    }
  }'
echo
