# Aliases
alias ls='ls -lG'
alias vim='mvim'
alias start_collage="cd ~/Vagrants/scrapwalls && vagrant halt -f && vagrant up && vagrant ssh -c 'cd /vagrant && nmp start'"
alias stop_collage="cd ~/Vagrants/scrapwalls && vagrant halt -f"

# My scripts directory
export PATH="/Users/ethan/ethan-bin:$PATH"
echo "setting up"
# XCode
export PATH="/Applications/Xcode.app/Contents/Developer/usr/bin:$PATH"

# Git
# export PATH="/usr/local/git/bin:$PATH"

# MySQL
export PATH="/usr/local/mysql/bin:$PATH"

# Stylus
export PATH="/Users/ethan/packages/npm/node_modules/stylus/bin:$PATH"

# For Brew installed PHP 5.4
export PATH="$(brew --prefix homebrew/php/php54)/bin:$PATH"

# For Brew
export PATH="/usr/local/sbin:$PATH"

# For Ruby & Ruby on Rails
eval "$(rbenv init -)"

# For VirtualBox
export PATH="$PATH:/Applications/VirtualBox.app/Contents/MacOS"

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
