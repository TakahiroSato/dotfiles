#!/bin/bash
cd `dirname $0`

sudo apt-add-repository ppa:fish-shell/release-3
sudo apt-get update
sudo apt-get install fish

curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
ln -sf `pwd`/fishfile ~/.config/fish/fishfile
ln -sf `pwd`/config.fish ~/.config/fish/config.fish
for f in `ls functions`
do
  ln -sf `pwd`/functions/$f ~/.config/fish/functions/$f
done

fish -c fisher
