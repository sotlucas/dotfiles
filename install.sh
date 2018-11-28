#!/usr/bin/env bash

SOURCE="https://github.com/sotlucas/dotfiles"
TARGET="$HOME/.dotfiles"
CMD="git clone $SOURCE $TARGET"

echo "Instalando dotfiles..."
mkdir -p "$TARGET"
# Clono repositorio
eval "$CMD"
# Creo symlinks
ln -sf ~/.dotfiles/.gitconfig ~/
ln -sf ~/.dotfiles/.vimrc ~/
ln -sf ~/.dotfiles/.bashrc ~/
ln -sf ~/.dotfiles/.tmux.conf ~/
echo "Listo!"
