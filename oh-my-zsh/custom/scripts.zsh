# Clear
alias cl="clear"

# Wget with no certificate
alias wget="wget --no-check-certificate"

# Untar
alias extract="tar -xvzf"

# Numerical CHMOD
alias perms="stat --format '%a'"

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