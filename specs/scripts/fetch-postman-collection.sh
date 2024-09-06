#!/usr/bin/env bash
# fetch-postman-collection.sh: Script to download the NVCF postman collection.
# Usage: ./fetch-postman-collection.sh <target-dir>
set -euo pipefail

OUTPUT_PATH="${1:-postman-collection.json}"
DOCS_URL="${DOCS_URL:-https://docs.nvidia.com/cloud-functions/user-guide/latest/cloud-function/api.html}"
# Function to extract the postman collection URL from the NVCF docs.
extract_postman_url() {
    curl -s "$DOCS_URL" | sed -n 's/.*href="\([^"]*postman\.json\)".*/\1/p' | head -n 1
}

# Main script
postman_url=$(extract_postman_url)
if [ -n "$postman_url" ]; then
    base_url=$(dirname "$DOCS_URL")
    full_url="$base_url/$postman_url"
    echo "Downloading postman collection from: $full_url"
    curl -s -L -o "${OUTPUT_PATH}" "$full_url"
    echo "Postman collection downloaded successfully."
else
    echo "Failed to find the postman collection URL."
    exit 1
fi
