#!/bin/bash
#TOKEN=BAhJIiU2NzdjM2E4MmExNTgwMThlNDM4ZjlmNDc2NjhmZTNjMwY6BkVG--28254e556274f03845295dd66d24e92c53a4e4dc TITLE="first entry for user id 1" BACKSTORY="Backstory is that this is a class project deuce" STOPPER="update isn't working still" STATUS="open" sh scripts/create-entry.sh
#TITLE="second entry for user id 1" BACKSTORY="Backstory is that this is a class project deuce" STOPPER="update isn't working still" STATUS="open" sh scripts/create-entry.sh
#TITLE="third entry for user id 2" BACKSTORY="Backstory is that this is a class project deuce" STOPPER="update isn't working still" STATUS="open" sh scripts/create-entry.sh
#TITLE="fourth entry for user id 1" BACKSTORY="Backstory is that this is a class project deuce" STOPPER="update isn't working still" STATUS="open" sh scripts/create-entry.sh

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/entries"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "entry": {
      "title": "'"${TITLE}"'"
    }
  }'

echo

# curl --include --request POST http://localhost:4741/entries \
#   --header "Content-Type: application/json" \
#   --data '{
#     "entry": {
#       "title": "this is a new entry",
#       "backstory": "working on this project, I am trying to solve a problem",
#       "stopper": "thrashing, lack of knowledge, staring at screen too long?",
#       "status": "unsolved"
#     }
#   }'
