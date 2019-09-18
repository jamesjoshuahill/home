#!/usr/bin/env bash
# shellcheck disable=SC1090,1091

# Sensible bash
source "$HOME/.sensible"

# Allow overwriting files on stdout redirection '>'
set +o noclobber

# Add ~/projects to CDPATH
CDPATH=".:$HOME/projects"

# Load aliases
source "$HOME/.aliases"

# Add ~/bin to path
PATH="$HOME/bin:$PATH"

# Use GNU make
PATH="/usr/local/opt/make/libexec/gnubin:$PATH"

# Go
source "$HOME/.gimme/envs/latest.env" &> /dev/null
export PATH="$HOME/go/bin:$PATH"

# Ruby
eval "$(rbenv init -)"

# Node.js
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"

# direnv
eval "$(direnv hook bash)"

# Enable bash completion
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# Prompt
export PS1='\[\033[34m\]\w\[\033[0m\] '
