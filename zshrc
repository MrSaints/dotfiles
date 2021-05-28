autoload -Uz compinit; compinit
autoload -Uz promptinit; promptinit

unsetopt MENU_COMPLETE
unsetopt FLOWCONTROL
setopt AUTO_MENU
setopt COMPLETE_IN_WORD
setopt ALWAYS_TO_END

setopt AUTO_CD
setopt CORRECT
setopt CORRECT_ALL

zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z-_}={A-Za-z_-}' 'r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' special-dirs true
zstyle ':completion:*' list-colors ''

[[ -s "$HOME/.zsh/001_aliases.zsh" ]] && source "$HOME/.zsh/001_aliases.zsh"
[[ -s "$HOME/.zsh/002_bindings.zsh" ]] && source "$HOME/.zsh/002_bindings.zsh"
[[ -s "$HOME/.zsh/003_functions.zsh" ]] && source "$HOME/.zsh/003_functions.zsh"
[[ -s "$HOME/.zsh/004_paths.zsh" ]] && source "$HOME/.zsh/004_paths.zsh"
[[ -s "$HOME/.zsh/005_dev.zsh" ]] && source "$HOME/.zsh/005_dev.zsh"
[[ -s "$HOME/.zsh/100_init.zsh" ]] && source "$HOME/.zsh/100_init.zsh"
