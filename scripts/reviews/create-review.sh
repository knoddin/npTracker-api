curl --include --request POST http://localhost:4741/reviews \
  --header "Authorization: Token token=BAhJIiVjNTIzMTc5NWVhMWU4ZWIwYTlmMzI0ODc0MTY1MTJkZgY6BkVG--fb47c0960534f9baa8e7f26bdbfb049c012c94d0" \
  --header "Content-Type: application/json" \
  --data '{
    "review": {
      "description": "this is a test review",
      "rating": 5,
      "park_id": 1
    }
  }'
