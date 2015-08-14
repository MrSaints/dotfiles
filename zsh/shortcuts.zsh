# Workspace
alias claude="cd ~/Workspace/nodejs/ClaudeBot/"
alias enactus="cd ~/Workspace/nodejs/Enactus/"
alias goproj="cd ~/Workspace/golang/src/github.com/mrsaints/"
alias arachnys="cd ~/Workspace/nodejs/Arachnys/Website/"
alias foodfly="cd ~/Workspace/ruby/foodfly/"

# Untar
alias untar="tar -xvzf"

# Numerical CHMOD
alias getperms="stat --format '%a'"

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