#!/bin/bash
cd `dirname $0`
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
#cp fishfile ~/.config/fish/
#cp functions/* ~/.config/fish/functions

ln -sf `pwd`/fishfile ~/.config/fish/fishfile
for f in `ls functions`
do
  ln -sf `pwd`/functions/$f ~/.config/fish/functions/$f
done

fish -c fisher
