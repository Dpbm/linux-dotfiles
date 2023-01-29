if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME=""

source $HOME/.vars.sh
source $HOME/.asdf/plugins/java/set-java-home.zsh
source $HOME/.asdf/asdf.sh
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

plugins=(git zsh-syntax-highlighting zsh-autosuggestions asdf poetry copybuffer gitignore gh python rust safe-paste)

source $ZSH/oh-my-zsh.sh

fpath+=~/.zfunc
autoload -Uz compinit && compinit

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias ls="exa --icons"
