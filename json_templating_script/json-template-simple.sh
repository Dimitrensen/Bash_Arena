#!/bin/bash

# Read the contents of base.json and extension.json into variables
base=$(cat base.json)
extension=$(cat extension.json)

# Use jq to perform the template substitution
result=$(echo "$extension" | jq --argjson base "$base" '.store = $base.store | .data.point = $base.a | .price = $base.d | .location.toc = $base.b.c | .target.f = $base.b')

echo "$result" > result.json