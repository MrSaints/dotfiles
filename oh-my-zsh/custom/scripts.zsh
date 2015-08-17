# Clear
alias cl="clear"

# Wget with no certificate
alias wget="wget --no-check-certificate"

# Untar
alias untar="tar -xvzf"

# Extract using file-roller
alias extract="file-roller -h"

# Numerical CHMOD
alias perms="stat --format '%a'"

# IRC client
alias irc="weechat"

# Set directories to 755 and files to 644
# Use with caution! (do not execute in root)
fixchmod() {
    sudo find * -type d -print0 | xargs -0 chmod 0755
    sudo find . -type f -print0 | xargs -0 chmod 0644
}

# Clean
quickclean() {
    sudo apt-get autoclean
    sudo apt-get autoremove
    dpkg --list | grep "^rc" | cut -d " " -f 3 | xargs sudo dpkg --purge
}

# Generate SSH keys
newssh() {
    if [ -z "$1" ]
    then
        echo "Please enter a file name / path."
        return 0
    fi

    if [ -z "$2" ]
    then
        currentuser=$USER
    else
        currentuser=$2
    fi

    ssh-keygen -b 4096 -f $1 -C $currentuser@$(hostname) -o -a 500
}