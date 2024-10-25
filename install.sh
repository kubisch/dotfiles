#!/bin/bash

# Wezterm
mkdir -p ~/.config/wezterm/
stow wezterm -t ~/.config/wezterm/

# Neovim
mkdir -p ~/.config/nvim
stow nvim -t ~/.config/nvim/

# Tmux
mkdir -p ~/.config/tmux
stow tmux -t ~/.config/tmux/
