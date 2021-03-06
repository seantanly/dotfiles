#!/usr/bin/env bash

CUR_PATH=$(pwd)
echo $CUR_PATH

declare -a arr=(".eslintrc.js" ".gitconfig" ".gitignore_global" ".tern-config" ".tmux.conf" ".vimrc" ".vim/ftdetect" ".vim/ftplugin")

for i in "${arr[@]}"
do
	FILE_PATH="$CUR_PATH/$i"
	CMD="ln -is $FILE_PATH $HOME/$i"
	echo $CMD
	$($CMD)
done

echo "Done."
echo "Please add $CUR_PATH/bin to your PATH"
