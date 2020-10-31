export ZSH="~/.oh-my-zsh"
export PATH="~/Library/Python/2.7/bin:$PATH"
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=${PATH}:/usr/local/mysql/bin
export PATH=$PATH:/opt/apache-maven/bin
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export NVM_DIR="$HOME/.nvm"

# Load Antigen configurations
antigen init ~/.antigenrc

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

antigen bundle rsync
antigen bundle lein

antigen bundle git
antigen bundle docker

antigen bundle pip
antigen bundle python

antigen bundle history
antigen bundle command-not-found
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='clear && ls -lathr --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

autoload -Uz bashcompinit && bashcompinit

# Powerline configuration
if [ -f /usr/share/powerline/bindings/bash/powerline.sh ]; then
	powerline-daemon -q
	POWERLINE_BASH_CONTINUATION=1
	POWERLINE_BASH_SELECT=1
	source /usr/share/powerline/bindings/bash/powerline.sh
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

ZSH_DISABLE_COMPFIX=true

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ZSH_THEME="powerlevel10k/powerlevel10k"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# # >>> conda initialize >>>
# # !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/Users/DEZ01/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/Users/DEZ01/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "/Users/DEZ01/anaconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/Users/DEZ01/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# # <<< conda initialize <<<

source ~/antigen.zsh
source $ZSH/oh-my-zsh.sh

# Tell Antigen that you're done.
antigen apply

alias j15="export JAVA_HOME=`/usr/libexec/java_home -v 15`; java -version"
alias j11="export JAVA_HOME=`/usr/libexec/java_home -v 11`; java -version"
alias j8="export JAVA_HOME=`/usr/libexec/java_home -v 1`; java -version"
alias jversions="/usr/libexec/java_home -V"
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias lsf='ls -p | grep -v /'
alias lsd='ls -d .*/ */'
alias uu='sudo apt update && sudo apt -y upgrade'
alias mv='mv -i'
alias mkdir='mkdir -p'
alias df='df -hT'
alias cat='clear && cat'
alias less='clear && less -NX'
alias update='source ~/.bashrc'
# alias linhome='cd /mnt/wsl'
# alias exthome='cd /mnt/d/Users/dinak'
# alias winhome='cd /mnt/c/Users/dinak'
alias glog='git log --oneline --decorate --graph --all'
