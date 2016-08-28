sudo apt-get update

# Install support for https, and CA certificates
sudo apt-get install apt-transport-https ca-certificates

# Install urxvt terminal (with support for 256 colours)
sudo apt-get install rxvt-unicode-256color

# Install i3wm (stable)
sudo bash -c 'echo "deb http://debian.sur5r.net/i3/ $(lsb_release -c -s) universe" >> /etc/apt/sources.list'
sudo apt-get --allow-unauthenticated install sur5r-keyring
sudo apt-get update
sudo apt-get install i3

# Install Docker
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo bash -c 'echo "deb https://apt.dockerproject.org/repo ubuntu-$(lsb_release -c -s) main" >> /etc/apt/sources.list'
sudo apt-get update
sudo apt-get install docker-engine
