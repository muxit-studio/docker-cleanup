#!/bin/sh

# Create directory for Docker cli plugins
mkdir -p ~/.docker/cli-plugins

# Download the plugin script
curl "https://raw.githubusercontent.com/muxit-studio/docker-cleanup/main/docker-cleanup" -o ~/.docker/cli-plugins/docker-cleanup

# Make the script executable
chmod +x ~/.docker/cli-plugins/docker-cleanup
