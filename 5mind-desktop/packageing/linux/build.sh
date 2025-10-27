#!/usr/bin/env bash
set -e

APP_ID="com.fivemind.Desktop"
BUILD_DIR="build-dir"
MANIFEST="com.fivemind.Desktop.json"

mkdir -p "$BUILD_DIR"

# Build and install the app
flatpak run org.flatpak.Builder --force-clean --install --user "$BUILD_DIR" "$MANIFEST"

# Run the app after build
flatpak run "$APP_ID"

