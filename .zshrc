# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="avit"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git aws)

# User configuration

export PATH="/Users/ethan/.composer/vendor/bin:/Users/ethan/.rbenv/shims:/usr/local/sbin:/usr/local/opt/php54/bin:/Users/ethan/packages/npm/node_modules/stylus/bin:/Applications/Xcode.app/Contents/Developer/usr/bin:/Users/ethan/ethan-bin:/Users/ethan/.rbenv/shims:/usr/local/bin:/usr/local/opt/php54/bin:/Users/ethan/packages/npm/node_modules/stylus/bin:/usr/local/mysql/bin:/Applications/Xcode.app/Contents/Developer/usr/bin:/Users/ethan/ethan-bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/git/bin:/opt/ImageMagick/bin:/usr/local/MacGPG2/bin:/usr/texbin:/Users/ethan/.rvm/bin:/usr/local/bin:/usr/local/mysql/bin:/usr/local/git/bin:/usr/local/share/npm/bin:/Applications/Xcode.app/Contents/Developer/usr/bin:/Users/ethan/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/MacGPG2/bin:/usr/texbin:/Users/ethan/.rvm/bin:/usr/local/bin:/usr/local/mysql/bin:/usr/local/git/bin:/usr/local/share/npm/bin:/Applications/Xcode.app/Contents/Developer/usr/bin:/Users/ethan/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/MacGPG2/bin:/usr/texbin"
# export MANPATH="/usr/local/man:$MANPATH"

# setup MySQl path
MYSQL=/usr/local/mysql/bin
export PATH=$PATH:$MYSQL
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH

source $ZSH/oh-my-zsh.sh

# For hub completions
# https://github.com/github/hub/tree/master/etc
fpath=(~/.zsh/completions $fpath) 
autoload -U compinit && compinit

LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/Cellar/php54-imagick/3.1.0RC2/imagick.so

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias git=hub
alias vim=mvim
alias start_collage="cd ~/Vagrants/scrapwalls && vagrant halt -f && vagrant up && vagrant ssh -c 'cd /vagrant && npm start'"
alias stop_collage="cd ~/Vagrants/scrapwalls && vagrant halt -f"

# added by travis gem
[ -f /Users/ethan/.travis/travis.sh ] && source /Users/ethan/.travis/travis.sh
