#!/bin/bash

curl --include --request POST http://localhost:4741/sign-in \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "k@k.email",
      "password": "123"
    }
  }'
