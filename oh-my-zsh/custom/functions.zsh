# Clean Docker containers, images, and volumes
docker-clean() {
    docker kill $(docker ps -q)
    docker rm $(docker ps -a -q)
    docker rmi $(docker images -q -f dangling=true)
    docker volume rm $(docker volume ls -qf dangling=true)
}

# Create a new directory, and enter it
mkd() {
    mkdir -p "$1" && cd "$1"
}

# Set directories to 755 and files to 644
# Use with caution! (do not execute in root)
fixchmod() {
    sudo find * -type d -print0 | xargs -0 chmod 0755
    sudo find . -type f -print0 | xargs -0 chmod 0644
}

# Clean packages
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

# Hacky start X w/ logout on exit
startx() {
    command startx && exit
}
