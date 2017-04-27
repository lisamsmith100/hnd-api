#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/entries"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "entry": {
      "title": "'"${TEXT}"'"
      "backstory": "'"${TEXT}"'"
      "stopper": "'"${TEXT}"'"
      "status": "'"${TEXT}"'"
      "deleted_flag": "'"${BOOLEAN}"'"
    }
  }'

echo

# curl request
curl --include --request POST http://localhost:4741/entries \
  --header "Content-Type: application/json" \
  --data '{
    "entry": {
      "title": "This is my first item in my list",
      "backstory": "This is an experiment for project 1",
      "stopper": "Knowing everything I want to know to make this awesome",
      "status": "open"
      "deleted_flag": "false"
    }
  }'
