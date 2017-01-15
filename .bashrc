# MySQL
export PATH="/usr/local/mysql/bin:$PATH"

# For Brew
export PATH="/usr/local/sbin:$PATH"

# For Ruby & Ruby on Rails
eval "$(rbenv init -)"

# For pyenv
eval "$(pyenv init -)"

# PATH setting
export PATH=$PATH:/usr/local/bin:/usr/local/mysql/bin:/usr/local/git/bin:/usr/local/share/npm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/MacGPG2/bin:/usr/texbin:/User/ethan/local/bin:

# For GIT autocompletion
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

# configure prompt
PS1="\d \u@\h:\w $ "

# added by travis gem
[ -f /Users/ethan/.travis/travis.sh ] && source /Users/ethan/.travis/travis.sh
