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

# Numerical CHMOD (Linux)
alias perms="stat --format '%a'"

# Safety (prompts)
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"

# Better `cat` code formatting
alias cat="BAT_THEME=\"Monokai Extended Origin\" BAT_STYLE=\"numbers,changes,header\" bat"

# Better `ls`
alias ls="exa"
