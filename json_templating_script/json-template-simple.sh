#!/bin/bash

# Read the contents of base.json and extension.json
base=$(<base.json)
extension=$(<extension.json)

result=$(jq --argjson base "$base" '. | tostring' extension.json)

echo "$result" > result.json