if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="powerlevel10k/powerlevel10k"

source $HOME/.vars.sh
source $HOME/.aliases.sh
source $HOME/.asdf/plugins/java/set-java-home.zsh
source $HOME/.asdf/asdf.sh
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

plugins=(git zsh-syntax-highlighting zsh-autosuggestions asdf poetry copybuffer gitignore gh python rust safe-paste)

source $ZSH/oh-my-zsh.sh

fpath+=~/.zfunc
autoload -Uz compinit && compinit

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


__conda_setup="$('$HOME/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/anaconda3/etc/profile.d/conda.sh" ]; then
        . "$HOME/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="$HOME/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup

