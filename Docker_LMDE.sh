# Docker. @See: https://docs.docker.com/engine/install/debian/

sudo mkdir -p /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=amd64 signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian  bullseye stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo chmod a+r /etc/apt/keyrings/docker.gpg
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y
sudo usermod -a -G docker $USER
sudo chown $USER:$USER /var/run/docker.sock
sudo systemctl start docker
sudo systemctl enable docker
docker -v

# Docker Compose. @See: https://docs.docker.com/compose/install/other/
sudo apt update
sudo curl -SL https://github.com/docker/compose/releases/download/v2.13.0/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
docker-compose -v






