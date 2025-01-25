#!/bin/bash

# Assure that there is a file
if [ $# -eq 0 ]; then
  echo "Usage: $0 <input_file>"
  exit 1
fi

input_file="$1"
output_file="${input_file%.json}.minified.json"

# Minify the JSON with jq
jq -c . "$input_file" > "$output_file"

echo "Minified JSON saved to $output_file"
