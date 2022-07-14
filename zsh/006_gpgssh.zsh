# This is needed to allow Yubikey to be used for SSH (e.g. Git).
# https://github.com/drduh/YubiKey-Guide#replace-agents
export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent
gpg-connect-agent updatestartuptty /bye > /dev/null
