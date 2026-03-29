#!/bin/bash

echo "========================================="
echo "Jekyll Preview Script"
echo "========================================="
echo ""

# Check if user is in docker group
if groups | grep -q docker; then
    echo "✓ Docker group access detected"
    USE_SUDO=""
else
    echo "⚠ User not in docker group, will use sudo"
    echo "  To avoid using sudo in future, run:"
    echo "    sudo usermod -aG docker $USER"
    echo "    newgrp docker"
    echo ""
    USE_SUDO="sudo"
fi

# Stop any existing Jekyll containers
echo "Stopping any existing Jekyll containers..."
$USE_SUDO docker ps -a | grep jekyll | awk '{print $1}' | xargs -r $USE_SUDO docker stop 2>/dev/null
$USE_SUDO docker ps -a | grep jekyll | awk '{print $1}' | xargs -r $USE_SUDO docker rm 2>/dev/null

echo ""
echo "Starting Jekyll server..."
echo "Please wait for the server to start (this may take 30-60 seconds)..."
echo ""
echo "Once you see 'Server address: http://0.0.0.0:4000', open your browser to:"
echo "  👉 http://localhost:4000"
echo ""
echo "Press Ctrl+C to stop the server"
echo ""
echo "========================================="

cd "$(dirname "$0")"
$USE_SUDO docker run --rm \
  -v "$PWD":/srv/jekyll \
  -p 4000:4000 \
  jekyll/jekyll:3.8 \
  jekyll serve --watch --force_polling --host 0.0.0.0
