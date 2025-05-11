wget -O - https://download.jetbrains.com/datagrip/datagrip-2024.1.5.tar.gz | tar -zxp
sudo cp -R ~/DataGrip-2024.1.5 /opt/
sudo ln -s /opt/DataGrip-2024.1.5/bin/datagrip.sh /usr/local/bin/datagrip

# Logo @See: https://www.jetbrains.com/company/brand/
wget https://resources.jetbrains.com/storage/products/company/brand/logos/DataGrip_icon.png
sudo cp DataGrip_icon.png /opt/DataGrip-2024.1.5/
sudo nano /usr/share/applications/datagrip.desktop

---

[Desktop Entry]
Version=1.0
Type=Application
Name=DataGrip
Icon=/opt/DataGrip-2024.1.5/DataGrip_icon.png
Exec="/opt/DataGrip-2024.1.5/bin/datagrip.sh"
Comment=IDE for relational and NoSQL databases
Categories=Development;IDE;
Terminal=false
StartupWMClass=datagrip

---

https://cloudflare-ipfs.com/ipfs/bafybeiatyghkzrrtodzt3stm652rkrjxndg4hq2ublfdmifk7plg5k5brq/

