[ -n "$BASH_VERSION" -a -f "$HOME/.bashrc" ] && . "$HOME/.bashrc"
PATH="$HOME/bin:$PATH"

alias docker=docker.io
alias ssh='eval $(/usr/bin/keychain --eval --agents ssh -Q --quiet ~/.ssh/id_[a-z]*) && ssh'
alias git='eval $(/usr/bin/keychain --eval --agents ssh -Q --quiet ~/.ssh/id_[a-z]*) && git'
