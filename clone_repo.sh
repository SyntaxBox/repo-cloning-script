#!/bin/bash

# Parse command-line arguments
while [[ $# -gt 0 ]]; do
    key="$1"
    case $key in
        --dir)
            DIR="$2"
            shift
            shift
            ;;
        *)
            echo "Unknown option: $1"
            exit 1
            ;;
    esac
done

# If --dir option not provided, use current directory
if [ -z "$DIR" ]; then
    DIR="."
fi

# If directory doesn't exist, create it
if [ ! -d "$DIR" ]; then
    mkdir -p "$DIR"
fi

# Get list of repositories
repositories=$(gh repo list --limit=1000 --json nameWithOwner 2>/dev/null)

# Check if repositories are available
if [ -z "$repositories" ]; then
    echo "No repositories found or an error occurred."
    exit 1
fi

# Clone repositories
echo "Cloning repositories..."
echo

echo "$repositories" | jq -r '.[].nameWithOwner' | while read -r repo; do
    # Extract repository name from "owner/repo" format
    repo_name=$(basename "$repo")
    git clone "https://github.com/$repo" "$DIR/$repo_name"
done

echo
echo "Done!"

