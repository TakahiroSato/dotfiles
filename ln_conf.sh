#!/bin/bash
cd `dirname $0`

for f in .??*
do
  [[ "$f" == ".git" ]] && continue
  ln -sf `pwd`/$f ~/$f
done
