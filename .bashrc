# MySQL
export PATH="/usr/local/mysql/bin:$PATH"

# For Brew
export PATH="/usr/local/sbin:$PATH"

# For Ruby & Ruby on Rails
eval "$(rbenv init -)"


# PATH setting
export PATH=$PATH:/usr/local/bin:/usr/local/mysql/bin:/usr/local/git/bin:/usr/local/share/npm/bin:/Applications/Xcode.app/Contents/Developer/usr/bin:/Users/ethan/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/MacGPG2/bin:/usr/texbin

# For GIT autocompletion
if [ -f ~/.git-completion.bash ]; then
	  . ~/.git-completion.bash
fi

# configure prompt
PS1="\d \u@\h:\w $ "

# added by travis gem
[ -f /Users/ethan/.travis/travis.sh ] && source /Users/ethan/.travis/travis.sh
