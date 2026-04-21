#!/bin/bash

DOTFILES="$(cd "$(dirname "$0")" && pwd)"

# Homebrew
brew bundle --file=Brewfile

# Zsh
ln -sf "$DOTFILES/.zshrc" ~/.zshrc

# Vim
ln -sf "$DOTFILES/.vimrc" ~/.vimrc

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim +PlugInstall +qall

# asdf
ASDF_DIR="${ASDF_DATA_DIR:-$HOME/.asdf}"

if [ ! -d "$ASDF_DIR/completions" ]; then
  mkdir -p "$ASDF_DIR/completions"
  asdf completion zsh > "$ASDF_DIR/completions/_asdf"
fi
