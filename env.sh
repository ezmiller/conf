#!/bin/zsh

# PATH
export PATH="/Users/ethan/.composer/vendor/bin:/Users/ethan/.rbenv/shims:/usr/local/sbin:/usr/local/opt/php54/bin:/Applications/Xcode.app/Contents/Developer/usr/bin:/Users/ethan/ethan-bin:/Users/ethan/.rbenv/shims:/usr/local/bin:/usr/local/opt/php54/bin:/usr/local/mysql/bin:/Applications/Xcode.app/Contents/Developer/usr/bin:/Users/ethan/ethan-bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/git/bin:/opt/ImageMagick/bin:/usr/local/MacGPG2/bin:/usr/texbin:/Users/ethan/.rvm/bin:/usr/local/bin:/usr/local/mysql/bin:/usr/local/git/bin:/Applications/Xcode.app/Contents/Developer/usr/bin:/Users/ethan/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/MacGPG2/bin:/usr/texbin:/Users/ethan/.rvm/bin:/usr/local/bin:/usr/local/mysql/bin:/usr/local/git/bin:/Applications/Xcode.app/Contents/Developer/usr/bin:/Users/ethan/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/MacGPG2/bin:/usr/texbin"

export EDITOR='nvim'
export PATH=$PATH:/usr/bin/pbcopy
# export PYTHONPATH=$PYTHONPATH
# export MANPATH="/usr/local/man:$MANPATH"

# Virtual Environment
# export WORKON_HOME=$HOME/.virtualenvs
# export PROJECT_HOME=$HOME/Projects
# source /usr/local/bin/virtualenvwrapper.sh

# Owner
export USER_NAME="Ethan Miller"

# For Ruby & Ruby on Rails
eval "$(rbenv init -)"

# For pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# For android sdk
ADB_PATH=/Users/ethan/Library/Android/sdk/platform-tools
export PATH=$PATH:$ADB_PATH

# MySQL
MYSQL=/usr/local/mysql/bin
export PATH=$PATH:$MYSQL
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH

# Datomic
DATOMIC_PATH=~/datomic/datomic-pro-0.9.5544/bin
export PATH=$PATH:$DATOMIC_PATH

# For Brew
export PATH="/usr/local/sbin:$PATH"

# Setup local user's bin
export PATH=$PATH:~/local/bin:

# For hub completions
# https://github.com/github/hub/tree/master/etc
fpath=(~/usr/local/share/zsh-completions $fpath) 
autoload -U compinit && compinit

export NVM_DIR="/Users/ethan/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# added by travis gem
[ -f /Users/ethan/.travis/travis.sh ] && source /Users/ethan/.travis/travis.sh

# FileSearch
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }

#mkdir and cd
function mkcd() { mkdir -p "$@" && cd "$_"; }

# Aliases
alias cppcompile='c++ -std=c++11 -stdlib=libc++'
alias git=hub

# Use sublimetext for editing config files
alias zshconfig="nvim ~/.zshrc"
alias envconfig="nvim ~/conf/env.sh"
alias enzo-up="(cd ~/Projects/motologic/enzo; tmux new -d -s enzo-dev -n 'docker' 'docker-compose up'; tmux neww -t enzo-dev:1 -n 'rails' 'sleep 20; REACT_ON_RAILS_ENV=HOT rails s -b 0.0.0.0 -e development_with_search'; tmux neww -t enzo-dev:2 -n 'webpack' 'HOT_RAILS_PORT=3500 npm run hot-assets'; tmux a -t enzo-dev)"

# added by Anaconda3 5.1.0 installer
export PATH="/Users/ethan/anaconda3/bin:$PATH"

# For rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# For direnv
eval "$(direnv hook zsh)"
