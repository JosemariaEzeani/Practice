# personal environment variables and startup programs

export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=${PATH}:/usr/local/mysql/bin

alias j15="export JAVA_HOME=`/usr/libexec/java_home -v 15`; java -version"
alias j11="export JAVA_HOME=`/usr/libexec/java_home -v 11`; java -version"
alias j8="export JAVA_HOME=`/usr/libexec/java_home -v 1`; java -version"
alias jversions="/usr/libexec/java_home -V"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
