#!/bin/sh

echo "Deploy for Mac"

for dotfile in .?*
do
    if [ $dotfile != '..' ] && [ $dotfile != '.git' ]
    then
        ln -sf "$PWD/$dotfile" $HOME
    fi
done

echo "Finish deploy"
