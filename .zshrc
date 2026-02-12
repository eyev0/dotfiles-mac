fpath+=~/.zfunc

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="half-life"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

GIT_AUTO_FETCH_INTERVAL=600 # in seconds

plugins=(git git-commit git-auto-fetch pass vi-mode)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=ru_RU.UTF-8
# export LC_ALL=ru_RU.UTF-8
export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LC_TYPE=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

alias firenvim='NVIM_FIRENVIM=1 nvim'
alias vimdiff='nvim -d'

alias dotfiles='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
alias lgd='lazygit -g $HOME/.dotfiles -w $HOME'

alias serena='uvx --from git+https://github.com/oraios/serena serena'

alias pip='openclaw tui --url ws://172.29.172.1:18987 --token $OPENCLAW_GATEWAY_TOKEN'

# ssh-add --apple-load-keychain 2> /dev/null
source "$HOME/.zsh_vi"

if [[ -n $(command -v pyenv) ]] then;
  eval "$(pyenv init -)"

# bun completions
[[ -s $HOME/.bun/_bun ]] && source "$HOME/.bun/_bun"
# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

. "$HOME/.local/share/../bin/env"

if [[ -n $(command -v zoxide) ]] then;
  eval "$(zoxide init zsh)"
fi

export HOMEBREW_NO_ENV_HINTS=1

fpath=(~/.zsh.d/ $fpath)
