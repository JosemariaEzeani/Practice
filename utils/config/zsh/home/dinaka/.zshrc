# maven=/opt/apache-maven/bin
python=/home/dinaka/Library/Python/2.7/bin
brew=/home/linuxbrew/.linuxbrew/bin
mysql=/usr/local/mysql/bin
local_bin=/home/dinaka/.local/bin
my_bin=/home/dinaka/bin
cuda=/usr/local/cuda-10.1/bin
PATH=python:brew:mysql:local_bin:my_bin:cuda:${PATH:+:${PATH}}"

export ZSH="/home/dinaka/.oh-my-zsh"
# export JAVA_HOME=/path/to/java_installation
export LD_LIBRARY_PATH=/usr/local/cuda-10.2/lib64:${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda/extras/CUPTI/lib64:${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
export LDFLAGS="-L/home/linuxbrew/.linuxbrew/opt/isl@0.18/lib"
export CPPFLAGS="-I/home/linuxbrew/.linuxbrew/opt/isl@0.18/include"
export PKG_CONFIG_PATH="/home/linuxbrew/.linuxbrew/opt/isl@0.18/lib/pkgconfig"
export NVM_DIR="/home/dinaka/.nvm"

ZSH_THEME="powerlevel10k/powerlevel10k"
ZSH_DISABLE_COMPFIX=true
plugins=(zsh-syntax-highlighting git fzf npm zsh-autosuggestions command-not-found zsh-completions)
autoload -U compinit && compinit
source $ZSH/oh-my-zsh.sh

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/home/dinaka/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTFILESIZE=2000
HISTSIZE=1000
SAVEHIST=1000
HISTCONTROL=ignoreboth # don't put duplicate lines or lines starting with space in the history.
bindkey -e
# End of lines configured by zsh-newuser-install

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r /home/dinaka/.dircolors && eval "$(dircolors -b /home/dinaka/.dircolors)" || eval "$(dircolors -b)"
    alias ls='clear && ls -lathr --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Powerline configuration
if [ -f /usr/share/powerline/bindings/bash/powerline.sh ]; then
	powerline-daemon -q
	POWERLINE_BASH_CONTINUATION=1
	POWERLINE_BASH_SELECT=1
	source /usr/share/powerline/bindings/bash/powerline.sh
fi

[ -f /home/dinaka/.fzf.zsh ] && source /home/dinaka/.fzf.zsh

# Enable Powerlevel10k instant prompt. Should stay close to the top of /home/dinaka/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-/home/dinaka/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-/home/dinaka/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` or edit /home/dinaka/.p10k.zsh.
[[ ! -f /home/dinaka/.p10k.zsh ]] || source /home/dinaka/.p10k.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/dinaka/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/dinaka/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/dinaka/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/dinaka/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# alias j15="export JAVA_HOME=`/usr/libexec/java_home -v 15`; java -version"
# alias j11="export JAVA_HOME=`/usr/libexec/java_home -v 11`; java -version"
# alias j8="export JAVA_HOME=`/usr/libexec/java_home -v 1`; java -version"
# alias jversions="/usr/libexec/java_home -V"
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
alias update='source /home/dinaka/.bashrc'
alias glog='git log --oneline --decorate --graph --all'

:'
A CA file has been bootstrapped using certificates from the system
keychain. To add additional certificates, place .pem files in
  /home/linuxbrew/.linuxbrew/etc/openssl@1.1/certs

and run
  /home/linuxbrew/.linuxbrew/opt/openssl@1.1/bin/c_rehash
'
eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib=$HOME/perl5)"
