#!/bin/bash

cp .vimrc ~/.vimrc

iecho
echo "vimrc installed into $HOME/.vimrc"
echo

mkdir -p ~/.vim/
rsync -vr .vim/ ~/.vim

echo
echo "Vim plugins installed into $HOME/.vim/"
echo
echo "Nice hacking :)"
echo
