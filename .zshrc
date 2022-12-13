if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ZSH_THEME=""

source $HOME/.vars.sh
source $HOME/.asdf/plugins/java/set-java-home.zsh
source $HOME/.asdf/asdf.sh
source $ZSH/oh-my-zsh.sh
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

plugins=(git zsh-autosuggestions asdf poetry)

fpath+=~/.zfunc
autoload -Uz compinit && compinit

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

