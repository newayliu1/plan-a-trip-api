#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/search"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=BAhJIiUwZjczMDlhOWZmNzhkYzg3YTRlODYxMDliMGNmMWJkMQY6BkVG--ccbf6405bcc22945f4b61487433ba5edf4a93383" \
  --header "Content-Type: application/json" \
  --data '{
    "location": {
      "input": "boston travel place"
    }
  }'
echo
