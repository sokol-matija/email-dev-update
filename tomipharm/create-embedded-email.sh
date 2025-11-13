#!/bin/bash

# Read the base64 data
BASE64_DATA=$(cat "/Users/msokol/Dev/Repos/2-Personal/email-dev-update/tomipharm/image-base64-small.txt")

# Read the HTML template
HTML_FILE="/Users/msokol/Dev/Repos/2-Personal/email-dev-update/tomipharm/christmas-business-partners-email-croatian.html"
OUTPUT_FILE="/Users/msokol/Dev/Repos/2-Personal/email-dev-update/tomipharm/christmas-email-embedded.html"

# Replace the image source with base64 data
sed "s|cid:christmas-card|data:image/png;base64,${BASE64_DATA}|g" "$HTML_FILE" > "$OUTPUT_FILE"

echo "✅ Email with embedded image created: christmas-email-embedded.html"
