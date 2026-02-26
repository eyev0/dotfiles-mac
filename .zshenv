if [[ $SHLVL == 1 ]]; then
    source ~/.zpath
fi
. "$HOME/.cargo/env"

command -v goenv &>/dev/null && eval "$(goenv init -)"
