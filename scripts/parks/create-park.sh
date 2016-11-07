curl --include --request POST http://localhost:4741/parks \
  --header "Authorization: Token token=BAhJIiUzMWEwNmM3YzNlZjJjOTc1ZGVkODliM2U5ZmMwNWVkZgY6BkVG--4c320cf371ce75aaba5587e8b15c7c4d6e14d5bf" \
  --header "Content-Type: application/json" \
  --data '{
    "park": {
      "name": "acadia",
      "location": "maine",
      "desription": "so nice"
    }
  }'
