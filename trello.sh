#!/bin/bash

# Your system should be 64 bits and check if the last version at https://github.com/danielchatfield/trello-desktop/ is 0.19
# If the current version is not 0.19 change the file name below accordingly

wget https://github.com/Racle/trello-desktop/releases/download/v0.2.1/Trello-linux-0.2.1.zip -O trello.zip
sudo mkdir /opt/trello
sudo unzip trello.zip -d /opt/trello/
sudo ln -sf /opt/trello/Trello /usr/bin/trello
echo -e '[Desktop Entry]\n Version=1.0\n Name=Trello Desktop\n Exec=/usr/bin/trello\n Icon=/opt/trello/resources/app/static/Icon.png\n Type=Application\n Categories=Application' | sudo tee /usr/share/applications/trello.desktop
sudo chmod +x /usr/share/applications/trello.desktop

# if having problems launching it install the following [thanks felipetavaresmelo]
# sudo apt-get install libgconf-2-4

# Taken from https://www.edivaldobrito.com.br/cliente-desktop-do-trello-no-linux/

## unistall  [thanks stelardiver]
# sudo rm -rf /opt/trello &&
# sudo rm /usr/bin/trello &&
# sudo rm /usr/share/applications/trello.desktop