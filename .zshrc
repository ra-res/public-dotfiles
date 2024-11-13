export ZSH="$HOME/.oh-my-zsh"

# Brew/Mise
export PATH=/opt/homebrew/bin:$PATH
export PATH=$HOME/.local/share/mise/installs/fzf/0.56.2/bin:$PATH
eval "$(~/.local/bin/mise activate zsh)"
source <(fzf --zsh)

# Settings
# HISTFILE=".histfile"             # Save 100000 lines of history
HISTSIZE=100000
SAVEHIST=100000
setopt BANG_HIST            # Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY     # Write the history file in the ":start:elapsed;command" format.
setopt INC_APPEND_HISTORY   # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY        # Share history between all sessions.
setopt HIST_IGNORE_DUPS     # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS # Delete old recorded entry if new entry is a duplicate.
setopt HIST_IGNORE_SPACE    # Don't record an entry starting with a space.

# Alias
alias grep="grep --color=auto"

export FZF_DEFAULT_OPTS='--layout=reverse'

zstyle ':omz:plugins:alias-finder' autoload yes # disabled by default
zstyle ':omz:plugins:alias-finder' longer yes   # disabled by default
zstyle ':omz:plugins:alias-finder' exact yes    # disabled by default
zstyle ':omz:plugins:alias-finder' cheaper yes  # disabled by default

plugins=(
    git
    z
    vi-mode
    fzf
    zsh-autosuggestions
    zsh-syntax-highlighting
    aliases
    alias-finder
)

# omz settings
ZSH_THEME="robbyrussell"
DISABLE_UNTRACKED_FILES_DIRTY="true"
VI_MODE_SET_CURSOR=true

source $ZSH/oh-my-zsh.sh

# Theme
autoload -Uz colors
colors
bg1='#259'
bg2='238'
bg3='236'
fg1='#cee'
fg2='#ccc'
fg3='248'
PROMPT_HOSTNAME="%K{$bg1}%F{$fg1} %n %K{$bg2}%F{$bg1}"
PROMPT_OS_AND_KERNEL="%K{$bg2}%F{$fg2}%m %(!.%K{red}%F{$bg2}.%K{$bg3}%F{$bg2})"
PROMPT_DIRECTORY="%(!.%K{red}%F{white}.%K{$bg3}%F{$fg3})%1~ %(!.%k%F{red}.%k%F{$bg3})"
# GIT_INFO='%(!.%K{red}%F{white}.%K{$bg4}%F{$fg4})$(git_prompt_info)%(!.%k%F{red}.%k%F{$bg4})'
PROMPT="${PROMPT_HOSTNAME} ${PROMPT_OS_AND_KERNEL} ${PROMPT_DIRECTORY}%f%k "
