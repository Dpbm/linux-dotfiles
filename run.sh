#!/bin/bash


if [ ! -d "$HOME/.config/lvim/" ]; then mkdir "$HOME/.config/lvim/"; fi 
if [ ! -d "$HOME/.config/i3/"]; then mkdir "%HOME/.config/i3/"; fi

mv config.lua $HOME/.config/lvim/
mv kitty $HOME/.config/
mv tilix $HOME/.config/
mv nvim $HOME/.config
mv config $HOME/.config/i3/

for file in $(/bin/ls -A -1 -I ".git" | grep -E "^[.]")
do
  mv $file $HOME
done

