# Clean Docker containers, images, and volumes
docker-clean() {
    docker system prune -f --volumes
    docker kill $(docker ps -q)
    docker rm $(docker ps -a -q)
    docker rmi $(docker images -q -f dangling=true)
    docker volume rm $(docker volume ls -qf dangling=true)
}

docker-wipe() {
    docker system prune -f -a
}

npm-clean() {
    sudo nvm cache clear
    sudo yarn cache clean
}

# Create a new directory, and enter it
mkd() {
    mkdir -p "$1" && cd "$1"
}

# Set directories to 755 and files to 644
# Use with caution! (do not execute in root)
fixchmod() {
    sudo find * -type d -print0 | sudo xargs -0 chmod 0755
    sudo find . -type f -print0 | sudo xargs -0 chmod 0644
}

# Clean packages
quickclean() {
    REV=$(uname -r)
    if [[ $REV = *"ARCH"* ]]; then
        echo "ArchLinux"
        sudo pacman -Rscn $(pacman -Qtdq)
        sudo pacman -Sc
    else
        echo "Debian"
        sudo apt-get autoclean
        sudo apt-get autoremove
        dpkg --list | grep "^rc" | cut -d " " -f 3 | xargs sudo dpkg --purge
    fi
}

quickreload() {
    sudo timedatectl set-ntp true
    sudo systemctl restart connman
    sudo systemctl restart dnscrypt-proxy
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
