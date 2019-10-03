#!/usr/bin/env bash

PATHOGEN="$HOME/.vim/bundle"

# Update files
echo "Updating dotfiles..."
eval "git pull origin master"
echo "All files updated"

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

# Update plugins
echo "Updating plugins..."
for i in $PATHOGEN/*; do
    echo "$i:"
    git -C $i pull
done

echo "All plugins updated"

echo "Enjoy! :)"
