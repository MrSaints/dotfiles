# Python
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PATH:$PYENV_ROOT/bin"

# Node
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Yarn
export PATH="$PATH:$HOME/.yarn/bin"

# pnpm
export PNPM_HOME="$HOME/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# Rust
[ -s "$HOME/.cargo/env" ] && \. "$HOME/.cargo/env"

# Go
export GOPROXY=https://proxy.golang.org
export GOPATH="$HOME/Workspace/golang"
export PATH="$PATH:/usr/local/go/bin/:$GOPATH/bin"

# Kubernetes
if command -v kubectl 1>/dev/null 2>&1; then
    source <(kubectl completion zsh)
fi
export KUBECTL_EXTERNAL_DIFF="delta --plus-style=\"syntax #012800\" --minus-style=\"normal #340001\" --syntax-theme=\"Monokai Extended\""

# Fly.io
export FLYCTL_INSTALL="$HOME/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"

# Foundry
export PATH="$PATH:$HOME/.foundry/bin"
