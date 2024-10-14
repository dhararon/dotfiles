if status is-interactive
  cd $HOME
end

# cargo
set -gx PATH $HOME/.cargo/bin $PATH

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

zoxide init fish | source
starship init fish | source

alias cd="z"

# Sign commits git gitlab
export GPG_TTY=$(tty)

# tmux

if type -q tmux
    if not test -n "$TMUX"
        tmux attach-session -t default; or tmux new-session -s default
    end
end
