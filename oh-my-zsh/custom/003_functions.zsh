# Clean Docker containers, images, and volumes
docker-clean() {
    docker kill $(docker ps -q)
    docker rm $(docker ps -a -q)
    docker rmi $(docker images -q -f dangling=true)
    docker volume rm $(docker volume ls -qf dangling=true)
    docker system prune -f --volumes
}

docker-wipe() {
    docker system prune -f -a
}

node-clean() {
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
    if [[ -f "/etc/arch-release" ]]; then
        echo "ArchLinux"
        sudo pacman -Rscn $(pacman -Qtdq)
        sudo pacman -Sc
    elif hash apt 2>/dev/null; then
        echo "Debian"
        sudo apt autoclean -y
        sudo apt autoremove -y
        dpkg --list | grep "^rc" | cut -d " " -f 3 | xargs sudo dpkg --purge
    fi
}

quickreload() {
    if [[ -f "/etc/arch-release" ]]; then
        sudo timedatectl set-ntp true
        sudo systemctl restart connman
        # sudo systemctl restart dnscrypt-proxy
    fi
}

# Generate SSH keys
# newssh() {
#     if [ -z "$1" ]
#     then
#         echo "Please enter a file name / path."
#         return 0
#     fi

#     if [ -z "$2" ]
#     then
#         currentuser=$USER
#     else
#         currentuser=$2
#     fi

#     ssh-keygen -b 4096 -f $1 -C $currentuser@$(hostname) -o -a 500
# }
