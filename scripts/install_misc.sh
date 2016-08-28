# Install urxvt terminal (with support for 256 colours)
sudo apt-get install rxvt-unicode-256color

# Install development i3wm
echo 'deb http://dl.bintray.com/i3/i3-autobuild-ubuntu wily main' > /etc/apt/sources.list.d/i3-autobuild.list
sudo apt-get update
sudo apt-get --allow-unauthenticated install i3-autobuild-keyring
sudo apt-get update
sudo apt-get install i3
