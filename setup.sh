#!/bin/sh
# setup dotfiles

THISDIR=`cd $(dirname $0);pwd`
DOTFILES=(.bashrc .gitconfig .gitignore_global .vimrc .vim .atom)

for FILE in ${DOTFILES[@]}
do
  if [ -a ~/${FILE} ]; then
    mv ~/${FILE} ~/${FILE}.bk
  fi
  ln -s ${THISDIR}/${FILE} ~/${FILE}
done

