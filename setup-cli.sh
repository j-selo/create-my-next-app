#!/bin/bash

echo "Setting up the CLI for creating Next.js apps. Please wait...⏳"
if [ -d /usr/local/bin ]; then
    chmod +x create-my-next-app.sh 
    sudo cp create-my-next-app.sh /usr/local/bin/create-my-next-app
else
    echo "Error: /usr/local/bin does not exist. Please create it and try again."
    exit 1
fi