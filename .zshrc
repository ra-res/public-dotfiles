# Exports
export ZSH="$HOME/.oh-my-zsh"
export EDITOR='vim'

# Themes
# ZSH_THEME="robbyrussell"
export PROMPT='%F{111}%m:%b%F{2}%~ $%f '

# Uncomment one of the following lines to change the auto-update behavior
zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Plugins
plugins=(git z vi-mode)

# Settings
DISABLE_UNTRACKED_FILES_DIRTY="true"
ZSH_CUSTOM=$ZDOTDIR/custom

source $ZSH/oh-my-zsh.sh

# Aliases
alias l="ls -CAF --color=auto"
alias ls="ls -CAF --color=auto"
alias grep="grep --color=auto"
