if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH=$HOME/.asdf/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=/home/linuxbrew/.linuxbrew/bin:$PATH
export PATH=$HOME/exiftool:$PATH
export PATH=/var/lib/snapd/snap/bin:$PATH
export PATH=$PNPM_HOME:$PATH

export PNPM_HOME=$HOME/.local/share/pnpm
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="powerlevel10k/powerlevel10k"

source $HOME/.asdf/plugins/java/set-java-home.zsh
source $HOME/.asdf/asdf.sh
source $ZSH/oh-my-zsh.sh

plugins=(git zsh-autosuggestions asdf poetry)

fpath+=~/.zfunc
autoload -Uz compinit && compinit

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
