#!/bin/bash

# Step 1: Install neovim
sudo apt install neovim -y

# Step 2: Clone packer.nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Step 3: Install curl
sudo apt install curl -y

# Step 4: Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

# Step 5: Install Node.js version 20 using nvm
nvm install 20

# Step 6: Install gcc
sudo apt install gcc -y

# Step 7: Create directory for fonts
mkdir -p ~/.local/share/fonts

# Step 8: Download nerd font
cd ~/.local/share/fonts && curl -fLO https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/DroidSansMono/DroidSansMNerdFont-Regular.otf

# Optionally, you might want to update font cache if necessary
# fc-cache -f -v

