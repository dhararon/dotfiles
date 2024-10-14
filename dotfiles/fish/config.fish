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

if status is-interactive
    # Commands to run in interactive sessions can go here
    and not set -q TMUX

    and set -q SSH_TTY
    tmux attach-session -t ssh_tmux; or tmux new-session -s ssh_tmux
  end

# Sign commits git gitlab
export GPG_TTY=$(tty)
