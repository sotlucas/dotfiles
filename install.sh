#!/usr/bin/env bash

SOURCE="https://github.com/sotlucas/dotfiles"
TARGET="$HOME/.dotfiles"
PATHOGEN="$HOME/.vim/bundle" # Directory created by pathongen

echo "Installing dotfiles..."

# Install pathogen if not installed
if [ ! -d "$PATHOGEN" ]; then
    echo "Installing pathogen..."
    mkdir -p ~/.vim/autoload ~/.vim/bundle
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
    echo "OK"
fi

# Create symlinks
echo "Creating symlinks..."
ln -sf $TARGET/.gitconfig $HOME
ln -sf $TARGET/.vimrc $HOME
ln -sf $TARGET/.bashrc $HOME
ln -sf $TARGET/.tmux.conf $HOME

# Install plugins if not installed
declare -A plugins=(
    ["gruvbox"]="morhetz"
    ["vim-airline"]="vim-airline"
    ["tmuxline.vim"]="edkolev"
    ["command-t"]="wincent"
    ["nerdtree"]="scrooloose"
    ["ultisnips"]="sirver"
)

cd $PATHOGEN

echo "Installing plugins..."

for plugin in "${!plugins[@]}"
do
    if [ ! -d $plugin ]; then
        echo "Installing $plugin..."
        git clone https://github.com/${plugins[$plugin]}/$plugin
        echo "$plugin - OK"
    fi
done

echo "All plugins installed"

echo "Everything is set up! Enjoy :)"
