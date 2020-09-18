#!/bin/bash

if [ -z "${DOTPATH:-}" ]; then
  local DOTPATH
  DOTPATH=~/.dotfiles
fi


function deploy() {
  echo $DOTPATH

  printf "\033[37m%s\033[m\n" "⏳ Deploying dotfiles..."

  if [ ! -d "$DOTPATH" ]; then
    printf "\033[31;1m🙀 fatal:\033[m \033[32m$DOTPATH\033[m not found.\n"

    exit 1
  fi

  cd "$DOTPATH"

  for f in .??*
  do
    [ "$f" = ".git" ] && continue
    [ "$f" = ".gitmodules" ] && continue
    [ "$f" = ".DS_Store" ] && continue

    ln -snfv "$DOTPATH/$f" "$HOME"/"$f"
  done

  printf "\033[32m✨ Done!\033[m\n\n"
}

deploy
