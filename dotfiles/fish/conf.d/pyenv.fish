# -----------------------------------------------------
# Pyenv configuration
# -----------------------------------------------------
set -gx PATH /usr/local/bin:/usr/bin:/bin $PATH
pyenv init - | source
status --is-interactive; and pyenv virtualenv-init - | source
