#!/bin/bash

ABS_PATH=$(pwd)
FILES=( .zshrc .vimrc .tmux.conf )

for FILE in "${FILES[@]}"
do
	ln -s $ABS_PATH/$FILE $HOME/$FILE
done

touch $HOME/.ohno_envs
