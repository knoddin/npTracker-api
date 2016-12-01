curl --include --request POST http://localhost:4741/reviews \
  --header "Authorization: Token token=BAhJIiU0N2YyYjg1ZjgxNjRhZDhlZWIyZGU5ZTA1MWI0MDUxMQY6BkVG--62ce316949407931446c4af7d312f6ecce288db5" \
  --header "Content-Type: application/json" \
  --data '{
    "review": {
      "description": "this is a test review",
      "rating": 3,
      "park_id": 4
    }
  }'
