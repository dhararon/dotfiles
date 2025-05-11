# ENVIRONMENT VARIABLES
# Sign commits git gitlab
export GPG_TTY=$(tty)
export TERRAGRUNT_TFPATH=tofu

# cargo
set -gx PATH $HOME/.cargo/bin $PATH

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
set --export PATH "$HOME/.local/bin" $PATH

# Generated for envman. Do not edit.
test -s ~/.config/envman/load.fish; and source ~/.config/envman/load.fish

# Alias
alias tg="terragrunt"

# RUN SCRIPTS
zoxide init fish | source
starship init fish | source
