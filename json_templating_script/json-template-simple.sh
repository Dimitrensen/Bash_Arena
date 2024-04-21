#!/bin/bash

# Variables naming in accordance to json files
base=$(cat base.json)
extension=$(cat extension.json)

result=$(echo "$extension" | jq --argjson base "$base" '{
  store,
  data: { point: $base.a },
  price: $base.d,
  location: { toc: $base.b.c },
  target: { f: $base.b }
}')

echo "$result" > result.json