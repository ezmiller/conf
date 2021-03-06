# load zgen
source "${HOME}/.zgen/zgen.zsh"

# if the init scipt doesn't exist
if ! zgen saved; then

  # specify plugins here
  zgen oh-my-zsh
  zgen oh-my-zsh plugins/git
  zgen oh-my-zsh plugins/aws

  # theme
  zgen load subnixr/minimal

  # generate the init script from plugins above
  zgen save
fi

# Source the env file (holds aliases, exports, etc)
source ~/conf/env.sh

