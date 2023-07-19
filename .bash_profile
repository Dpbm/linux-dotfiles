[[ -f ~/.bashrc ]] && . ~/.bashrc
if [[ -z $DISPLAY && $(tty) == /dev/tty1 ]]; then
  XDG_SESSION_TYPE=x11 GDK_BACKEND=x11 exec startx
fi
