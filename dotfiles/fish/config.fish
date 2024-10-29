# ENVIRONMENT VARIABLES
# Sign commits git gitlab
export GPG_TTY=$(tty)
export TERRAGRUNT_TFPATH=tofu

if status is-interactive
  cd $HOME
end

# cargo
set -gx PATH $HOME/.cargo/bin $PATH

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# tmux
if type -q tmux
    if not test -n "$TMUX"
        tmux attach-session -t default; or tmux new-session -s default
    end
end

# Generated for envman. Do not edit.
test -s ~/.config/envman/load.fish; and source ~/.config/envman/load.fish

# Alias
alias cd="z"
alias tg="terragrunt"
alias tgi="terragrunt init"
alias tgp="terragrunt plan"
alias cn="changie new"
alias cb="changie batch"
alias cba="changie batch auto"
alias cm="changie merge"
alias gpt="git push --tags"

# RUN SCRIPTS
zoxide init fish | source
starship init fish | source
