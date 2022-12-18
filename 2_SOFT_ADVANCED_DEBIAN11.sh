sudo apt update
sudo apt install apt-transport-https ca-certificates software-properties-common gnupg lsb-release gnupg2 -y

# Руководство программиста POSIX
sudo apt install manpages-posix -y

# Sublime Text. @See: https://www.sublimetext.com/docs/linux_repositories.html#apt
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg > /dev/null
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt install sublime-text -y





