#!/usr/bin/env zsh

HERE=$(cd $(dirname $0); pwd)

if test -n "$(git -C ${HERE} status --porcelain)" ||
   ! git -C ${HERE} diff --exit-code --stat --cached origin/main > /dev/null ; then
  echo -e "\e[36m=== DOTFILES IS DIRTY ===\e[m"
  echo -e "\e[33mThe dotfiles have been changed.\e[m"
  echo -e "\e[33mPlease update them with the following command.\e[m"
  echo "  cd ${HERE}"
  echo "  git add ."
  echo "  git commit -m \"update dotfiles\""
  echo "  git push origin main"
  echo -e "\e[33mor\e[m"
  echo "  git push origin main"
  echo -e "\e[36m=========================\e[m"
fi
