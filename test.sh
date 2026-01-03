#!/bin/bash

# This script allows you to test your Hugo website locally before deployment.
# It starts a local development server with live reloading for easy testing.
# Compatible with Hugo v0.154.2+ and modern Hugo versions.

msg() {
    printf "\033[1;32m :: %s\n\033[0m" "$1"
}

msg "Testing Hugo installation"
if ! command -v hugo &> /dev/null; then
    echo "Error: Hugo is not installed or not in PATH"
    exit 1
fi

hugo version

msg "Starting Hugo development server"
msg "The site will be available at http://localhost:1313/"
msg "Press Ctrl+C to stop the server"

# Run Hugo server with:
# -D: include draft content
# --disableFastRender: rebuild everything on changes (more reliable)
# --bind 0.0.0.0: allow access from other devices on network (optional)
hugo server -D --disableFastRender

