# Docker
alias dtmp="docker-compose run --rm"

# Kubernetes
alias kc="kubectl"

# Go
alias gg="go get"
alias gocov="go test -coverprofile=coverage.out && go tool cover -html=coverage.out"

# Python
alias python=python3

# Git
alias g="git"

# Wget with no certificate
alias wget="wget --no-check-certificate"

# Untar
alias tarx="tar -xvzf"
alias tarc="tar -cvzf"

# Extract using file-roller
alias extract="file-roller -h"

# Numerical CHMOD
alias perms="stat --format '%a'"

# Safety (prompts)
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"

# Better `cat` code formatting
alias bat="docker run -it --rm -e BAT_THEME -e BAT_STYLE -e BAT_TABS -v "$(pwd):/myapp" danlynn/bat"
alias cat="bat --theme=\"Monokai Extended Origin\""
