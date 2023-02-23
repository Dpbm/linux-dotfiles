#!/bin/bash

mv config.lua $HOME/.config/lvim/

for file in $(/bin/ls -A -1 -I ".git" | grep -E "^[.]")
do
  mv $file $HOME
done

