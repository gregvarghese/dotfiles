###############################################################################
################################### ZSH Config ################################
###############################################################################

# Path to Oh My Zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="robbyrussell"

# Plugins
plugins=(
  git
  z
  fzf
  macos
  docker
  composer
  laravel
)

# Load Oh My Zsh
source "$ZSH/oh-my-zsh.sh"

# environment
if [ -f "$HOME/.environment" ] ; then
    . "$HOME/.environment"
fi

# perlbrew
if [ -f "$HOME/perl5/perlbrew/etc/bashrc" ] ; then
    . "$HOME/perl5/perlbrew/etc/bashrc"
fi

# rvm
if [ -s "$HOME/.rvm/scripts/rvm" ] ; then
    . "$HOME/.rvm/scripts/rvm"
fi

# functions
if [ -f "$HOME/.functions" ] ; then
    . "$HOME/.functions"
fi

# alias
if [ -f "$HOME/.alias" ] ; then
    . "$HOME/.alias"
fi

# platform specific aliases
if [ -f "$HOME/.platform" ] ; then
    . "$HOME/.platform"
fi

# scripts
if [ -f "$HOME/.scripts" ] ; then
    . "$HOME/.scripts"
fi

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"

# RVM & Composer paths
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH:$HOME/.composer/vendor/bin"

# Local overrides
if [ -f "$HOME/.localrc" ] ; then
    . "$HOME/.localrc"
fi
