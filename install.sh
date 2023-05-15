#!/bin/bash
#Generated with ChatGPT then modified to my liking

# Determine the directory of the script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Specify the source directory where the color scheme file is located
SOURCE_DIR="$SCRIPT_DIR/Color-Scheme"

# Specify the target directory where the color schemes will be installed
COLOR_SCHEME_DIR="$HOME/.local/share/color-schemes"

# Check if the target directory exists; if not, create it
if [ ! -d "$COLOR_SCHEME_DIR" ]; then
  mkdir -p "$COLOR_SCHEME_DIR" || { echo "Error: Failed to create target directory."; exit 1; }
fi

# Copy the color scheme file to the target directory and overwrite if it exists
cp -f "$SOURCE_DIR/MewDark.colors" "$COLOR_SCHEME_DIR" || { echo "Error: Failed to copy color scheme file."; exit 1; }

echo "Color scheme installed successfully!"
