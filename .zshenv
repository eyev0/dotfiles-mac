if [[ $SHLVL == 1 ]]; then
    source ~/.zpath
fi
[[ -f "$HOME/.cargo/env" ]] && . "$HOME/.cargo/env"
