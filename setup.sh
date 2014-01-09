#!/bin/sh
# setup dotfiles

THISDIR=`cd $(dirname $0);pwd`
DOTFILES=(.bashrc .git .gitconfig .gitignore_global .vimrc .vim)

for FILE in ${DOTFILES[@]}
do
  ln -sfb ${THISDIR}/${FILE} ~/${FILE}
done

source ~/.bashrc

