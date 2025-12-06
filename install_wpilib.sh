#!/bin/bash

set -euo pipefail

WPILIB_URL="https://packages.wpilib.workers.dev/installer/v2025.3.2/Linux/WPILib_Linux-2025.3.2.tar.gz"
WPILIB_TAR="WPILib_Linux-2025.3.2.tar.gz"
WPILIB_DIR="WPILib_Linux-2025.3.2"

echo "Downloading WPILib..."
curl -L "$WPILIB_URL" -o "$WPILIB_TAR"

echo "Extracting WPILib..."
tar -xzf "$WPILIB_TAR"

echo "Running WPILib installer..."
cd "$WPILIB_DIR"
./WPILibInstaller
cd ..