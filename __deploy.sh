#!/usr/bin/bash

# Set variabled
BIN_DIR=~/.local/bin
DIR=$(dirname "$(readlink -f "$0")")
NVIM_CONFIG="$HOME/.config/nvim"

# Download latest version of nvim
curl -s https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.appimage -L -o $BIN_DIR/nvim

# Make it executable
chmod +x $BIN_DIR/nvim

echo $DIR
echo $NVIM_CONFIG

# Check id nvim_config exists and is not a symlink
if [ -d "$NVIM_CONFIG" ] && [ ! -L "$NVIM_CONFIG" ]; then
	ln -s $DIR $NVIM_CONFIG
fi
