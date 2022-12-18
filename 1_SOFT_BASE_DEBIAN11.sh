# Основные пакеты
sudo apt update -y && sudo apt upgrade -y
sudo apt install mc htop net-tools neofetch ufw -y
sudo apt install git curl wget -y

sudo ufw enable

# obs-studio - запись с монитора
# flameshot  - скриншоты
sudo apt install obs-studio flameshot -y

# Продвинутый эмулятор терминала GTK3. @See: https://gnunn1.github.io/tilix-web/
sudo apt install tilix -y

# Для работы с документами, файлами, изображениями
sudo apt install pavucontrol gthumb pdfshuffler qbittorrent gparted gtkhash xfburn retext -y
sudo apt install redshift-gtk p7zip-full -y

# Для работы с электронными книгами
sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin
