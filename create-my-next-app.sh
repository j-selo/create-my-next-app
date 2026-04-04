#!/bin/bash

# ================================= #
# Simple CLI to create Next.js app  #
# ================================= #

# Checking for dependency: GitHub CLI, git, and npx
for cmd in gh git npx; do
    if ! command -v $cmd &> /dev/null; then
        echo "Error: $cmd is not installed. Please install it and try again."
        exit 1
    fi
done

# Commnand-line argument for project name
PROJECT_NAME=$1
if [ -z "$1" ]; then
    echo "Usage: $0 <project-name>"
    exit 1
fi

# Create & Clone GitHub Repository
gh repo create $PROJECT_NAME --public --confirm || { echo "Error: Failed to create GitHub repository."; exit 1; }

# Change to the project directory
cd $PROJECT_NAME || { echo "Error: Failed to change directory to $PROJECT_NAME."; exit 1; }

# Run npx command to create new Next.js app
npx create-next-app@latest . || { echo "Error: Failed to create Next.js app."; exit 1; }

# Initial commit and push to GitHub
git add .
git commit -m "Initial commit: Create Next.js app"
git push origin main

# Echo message to user you have successfully created a Next.js app and pushed it to GitHub.
echo "Success!✅ Your Next.js app has been created and pushed to GitHub at https://github.com/\$USER/$PROJECT_NAME"