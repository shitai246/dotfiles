#!/bin/sh
# setup dotfiles

THISDIR=`cd $(dirname $0);pwd`
DOTFILES=(.bashrc .zshrc .gitconfig .gitignore_global .vimrc .vim .claude)

for FILE in ${DOTFILES[@]}
do
  if [ -a ~/${FILE} ]; then
    mv ~/${FILE} ~/${FILE}.bk
  fi
  ln -s ${THISDIR}/${FILE} ~/${FILE}
done

