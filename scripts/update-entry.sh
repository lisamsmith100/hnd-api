#!/bin/bash
# curl --include --request PATCH http://localhost:4741/entries/2 \
#   --header "Content-Type: application/json" \
#   --data '{
#     "entry": {
#       "title": "this is an update"
#     }
#   }'
# ID=2 TITLE="updating this title with new code"
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/entries/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  # --header "Authorization: Token token=$TOKEN" \
  --data '{
    "entry": {
      "title": "'"${TITLE}"'"
    }
  }'
  #
  # ,
  # "backstory": "'"${BACKSTORY}"'",
  # "stopper": "'"${STOPPER}"'",
  # "status": "'"${STATUS}"'",
  # "date_added": "'"${DATE_ADDED}"'",
  # "deleted_flag": "'"${DELETED_FLAG}"'"

#   #!/bin/bash
#
# API="${API_ORIGIN:-http://localhost:4741}"
# URL_PATH="/patients/${ID}"
# curl "${API}${URL_PATH}" \
#   --include \
#   --request PATCH \
#   --header "Content-Type: application/json" \
#   --data '{
#     "patient": {
#       "diagnosis": "'"${DIAGNOSIS}"'"
#     }
#   }'
#   #\
#   # --header "Authorization: Token token=$TOKEN"
#
# echo

# t.string   "title"
# t.string   "backstory"
# t.string   "stopper"
# t.string   "status"
# t.datetime "date_added"
# t.boolean  "deleted_flag"
# t.datetime "created_at",   null: false
# t.datetime "updated_at",   null: false

# curl --include --request PATCH http://localhost:3000/change-password/$ID \
#   --header "Authorization: Token token=$TOKEN" \
#   --header "Content-Type: application/json" \
#   --data '{
#     "passwords": {
#       "old": "an example password",
#       "new": "super sekrit"
#     }
#   }'
#
# curl --include --request PATCH http://localhost:4741/books/$ID \
#   --header "Content-Type: application/json" \
#   --data '{
# 	"book": {
# 		"author": "UPDATE"
# 	}
# }'
