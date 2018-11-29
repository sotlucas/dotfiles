#!/usr/bin/env bash

SOURCE="https://github.com/sotlucas/dotfiles"
TARGET="$HOME/.dotfiles"
UPDATE="git pull origin master"

echo "Instalando dotfiles..."
# Actualizo repositorio
eval "$UPDATE"
# Creo symlinks
ln -sf ~/.dotfiles/.gitconfig ~/
ln -sf ~/.dotfiles/.vimrc ~/
ln -sf ~/.dotfiles/.bashrc ~/
ln -sf ~/.dotfiles/.tmux.conf ~/
# Instalo los plugins de vim
echo "Instalando plugins..."
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
echo "Instalado pathogen"
cd ~/.vim/bundle
git clone https://github.com/morhetz/gruvbox
echo "Instalado gruvbox"
git clone https://github.com/vim-airline/vim-airline
echo "Instalado vim-airline"
git clone https://github.com/edkolev/tmuxline.vim
echo "Instalado tmuxline"
git clone https://github.com/wincent/command-t
echo "Instalado command-t"
git clone https://github.com/scrooloose/nerdtree
echo "Instalado NERDTree"
echo "Listo!"
