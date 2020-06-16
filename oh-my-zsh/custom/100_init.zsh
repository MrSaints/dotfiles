# General
export EDITOR=nano

# Python
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# Node
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Rust
[ -s "$HOME/.cargo/env" ] && \. "$HOME/.cargo/env"

# Go
export GOPROXY=https://proxy.golang.org

# Kubernetes
if command -v kubectl 1>/dev/null 2>&1; then
    source <(kubectl completion zsh)
fi
