# anyenv
set --export PATH  "$HOME/.anyenv/bin" $PATH

# pyenv
set -x PYENV_ROOT "$HOME/.anyenv/envs/pyenv"
set -x PATH $PATH "$HOME/.anyenv/envs/pyenv/bin"
set -gx PATH $PYENV_ROOT/shims $PATH
set -gx PYENV_SHELL fish

# rbenv
set -x RBENV_ROOT "$HOME/.anyenv/envs/rbenv"
set -x PATH $PATH "$HOME/.anyenv/envs/rbenv/bin"
set -gx PATH $RBENV_ROOT/shims $PATH
set -gx RBENV_SHELL fish

# goenv
set -x GOENV_ROOT "$HOME/.anyenv/envs/goenv"
set -x PATH $PATH "$HOME/.anyenv/envs/goenv/bin"
set -gx PATH $GOENV_ROOT/shims $PATH
set -gx GOENV_SHELL fish

# ndenv
set -x NDENV_ROOT "$HOME/.anyenv/envs/ndenv"
set -x PATH $PATH "$HOME/.anyenv/envs/ndenv/bin"
set -x PATH $NDENV_ROOT/shims $PATH
