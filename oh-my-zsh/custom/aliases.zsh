# Go
alias gg="go get"
alias gocoverage="go test -coverprofile=coverage.out && go tool cover -html=coverage.out"

# NPM
alias npmi="npm install --save"
alias npmid="npm install --save-dev"
alias npmfuckoff="rm -rf node_modules/ && npm install"

# Git
alias g="git"

# Clear
alias cl="clear"

# Wget with no certificate
alias wget="wget --no-check-certificate"

# Untar
alias xtar="tar -xvzf"
alias ctar="tar -cvzf"

# Extract using file-roller
alias extract="file-roller -h"

# Numerical CHMOD
alias perms="stat --format '%a'"

# IRC client
alias irc="weechat"

# Safety (prompts)
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"

# Better `cat` code formatting
alias c="pygmentize -O style=monokai -f console256 -g"
