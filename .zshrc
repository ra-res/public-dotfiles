# Exports
export ZSH="$HOME/.oh-my-zsh"

HISTFILE=".histfile"             # Save 100000 lines of history
HISTSIZE=100000
SAVEHIST=100000
setopt BANG_HIST                 # Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.

zstyle ':omz:update' mode reminder 
DISABLE_UNTRACKED_FILES_DIRTY="true"
ZSH_CUSTOM=$ZDOTDIR/custom
plugins=(git z vi-mode zsh-autosuggestions zsh-syntax-highlighting)
VI_MODE_SET_CURSOR=false

autoload -Uz colors
colors
bg1='#bdf'; bg2='#259'; bg3='236';
fg1='#259'; fg2='#bdf'; fg3='245';
PROMPT_HOSTNAME="%K{$bg1}%F{$fg1} %n %K{$bg2}%F{$bg1}"
PROMPT_OS_AND_KERNEL="%K{$bg2}%F{$fg2}%m %(!.%K{red}%F{$bg2}.%K{$bg3}%F{$bg2})"
PROMPT_DIRECTORY="%(!.%K{red}%F{white}.%K{$bg3}%F{$fg3})%1~ %(!.%k%F{red}.%k%F{$bg3}) "
PROMPT="${PROMPT_HOSTNAME} ${PROMPT_OS_AND_KERNEL} ${PROMPT_DIRECTORY}%f%k"

alias python='python3'
alias l="ls -CAF --color=auto"
alias ls="ls -CAF --color=auto"
alias grep="grep --color=auto"
alias gs='git status'
alias hgrep='history | grep '
alias cat='bat'

source $ZSH/oh-my-zsh.sh
source $HOME/fzf-git.sh
eval "$(fzf --zsh)"
eval "$(~/.local/bin/mise activate zsh)"

function tn() (
    if [ -n "$1" ]
      then
         tmux switch -t $1
      else
         echo "no session name"
     fi
  )