fpath+=~/.zfunc

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="half-life"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

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

alias vim='nvim'
alias n='nvim'
alias firenvim='NVIM_FIRENVIM=1 nvim'
alias np='nvim --headless "+Lazy sync" +qa'
alias vimdiff='nvim -d'

alias t='tmux'
alias ta='tmux a'
alias tk='tmux kill-session -t'
alias tka='tmux kill-server'

alias pfps='pfp start -a'

alias c='clear'
alias psv='source venv/bin/activate'

alias al='lsd -alh'
alias la='lsd -alh'
alias ld='lazydocker'
alias lg='lazygit'
alias lm='lazynpm'
alias pm='pnpm'

alias dotfiles='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
alias lgd='lazygit -g $HOME/.dotfiles -w $HOME'

alias psync='pass git pull && pass git push'
alias pgit='pass git'

alias vpn-4vps-up='sudo wg-quick up ~/Downloads/4vps.conf'
alias vpn-4vps-down='sudo wg-quick down ~/Downloads/4vps.conf'
alias vpn-simplecloud-up='sudo wg-quick up ~/Downloads/simplecloud.conf'
alias vpn-simplecloud-down='sudo wg-quick down ~/Downloads/simplecloud.conf'

# ssh-add --apple-load-keychain 2> /dev/null
source "$HOME/.zsh_vi"

export PATH=$PATH:~/.o3-cli/bin

eval "$(pyenv init -)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Added by Windsurf
export PATH="/Users/egdementyev/.codeium/windsurf/bin:$PATH"
# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/egdementyev/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions
