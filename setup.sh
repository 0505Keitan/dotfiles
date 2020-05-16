#!/bin/bash

FILES=(.vim .vimrc)

for file in ${FILES[@]}
do
    ln -s $HOME/dotfiles/$file $HOME/$file
done