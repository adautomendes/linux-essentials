sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade
sudo apt-get -y autoclean
sudo apt-get -y autoremove
sudo apt-get -y clean

echo ""
echo "Instalar Snap"
sudo apt install -y snapd

echo ""
echo "Instalar cUrl"
sudo apt install -y curl

echo ""
echo "Instalar Google Chrome"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get -f install
rm google-chrome-stable_current_amd64.deb

echo ""
echo "Instalar Spotify"
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get -y update && sudo apt-get install -y spotify-client

echo ""
echo "Instalar Git"
sudo apt-get install -y git

echo ""
echo "Instalar Sublime"
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install -y apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get -y update
sudo apt-get install -y sublime-text

echo ""
echo "Instalar VSCode"
sudo snap install code --classic

echo ""
echo "Instalar lamp"
sudo apt-get -y update
sudo apt-get install -y lamp-server^
sudo apt-get -y update

echo ""
echo "Instalar phpmyadmin"
wget https://files.phpmyadmin.net/phpMyAdmin/5.0.2/phpMyAdmin-5.0.2-all-languages.tar.gz
tar xf phpMyAdmin-5.0.2-all-languages.tar.gz
sudo mv phpMyAdmin-5.0.2-all-languages /var/www/html/phpmyadmin
sudo chmod -R 777 /var/www/html/phpmyadmin
sudo apt-get install -y php-mbstring
sudo service apache2 restart
rm phpMyAdmin-5.0.2-all-languages.tar.gz

echo ""
echo "Instalar Node.js"
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install -y build-essential

echo ""
echo "Instalar Yarn"
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get -y update && sudo apt-get install -y yarn

echo ""
echo "Instalar MongoDB"
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
sudo apt-get install -y gnupg
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list
sudo apt-get -y update
sudo apt-get install -y mongodb-org

echo ""
echo "Instalar Postman"
sudo snap install postman

echo ""
echo "Instalar Insomnia"
sudo snap install insomnia

echo ""
echo "Remover LibreOffice"
sudo apt-get -y remove --purge libreoffice*
sudo apt-get -y clean
sudo apt-get -y autoremove

echo ""
echo "Instalar WPS Office"
cd && wget -O wps-office.deb http://wdl1.pcfg.cache.wpscdn.com/wpsdl/wpsoffice/download/linux/9505/wps-office_11.1.0.9505.XA_amd64.deb
sudo dpkg -i wps-office.deb
sudo apt-get -f install && rm wps-office.deb

echo ""
echo "Instalar Plank"
sudo apt install -y plank

echo ""
echo "Instalar fonte FiraCode"
sudo apt install -y fonts-firacode

echo ""
echo "Instalar fontes do Windows"
wget http://ftp.de.debian.org/debian/pool/contrib/m/msttcorefonts/ttf-mscorefonts-installer_3.7_all.deb -P ~/Downloads
sudo apt install -y ~/Downloads/ttf-mscorefonts-installer_3.7_all.deb
sudo fc-cache -f -v
rm -f ~/Downloads/ttf-mscorefonts-installer_3.7_all.deb

echo ""
echo "Instalar fonte Monaco"
git clone git://github.com/lucascaton/lcaton-setuplinux.git ~/.setuplinux
sudo mkdir /usr/share/fonts/truetype/myfonts
cd /usr/share/fonts/truetype/myfonts
sudo cp ~/.setuplinux/files/Monaco_Linux.ttf .
sudo chown root:root Monaco_Linux.ttf
sudo mkfontdir
cd ..
fc-cache
rm -rf ~/.setuplinux/

echo "Script finalizado..."
echo "Reinicie a sistema!"
