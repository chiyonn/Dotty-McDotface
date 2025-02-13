#!/usr/bin/env zsh

HERE=$(cd $(dirname $0); pwd)

if test -n "$(git -C ${HERE} status --porcelain)" ||
   ! git -C ${HERE} diff --exit-code --stat --cached origin/main > /dev/null ; then
  echo -e "\e[36m=== DOTFILES IS DIRTY ===\e[m"
fi
