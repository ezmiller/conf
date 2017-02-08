# Aliases
alias git=hub

# MySQL
MYSQL=/usr/local/mysql/bin
export PATH=$PATH:$MYSQL
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH

# For Brew
export PATH="/usr/local/sbin:$PATH"

# For Ruby & Ruby on Rails
eval "$(rbenv init -)"

# For pyenv
eval "$(pyenv init -)"

# PATH setting
export PATH=$PATH:/usr/local/bin:/usr/local/mysql/bin:/usr/local/git/bin:/usr/local/share/npm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/MacGPG2/bin:/usr/texbin:/User/ethan/local/bin:

# Setup local user's bin
export PATH=$PATH:~/local/bin:

# For GIT autocompletion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# For hub completions
# https://github.com/github/hub/tree/master/etc
fpath=(~/usr/local/share/zsh-completions $fpath) 
autoload -U compinit && compinit

export NVM_DIR="/Users/ethan/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# configure prompt
PS1="\d \u@\h:\w $ "

