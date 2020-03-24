sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade
sudo apt-get -y autoclean
sudo apt-get -y autoremove
sudo apt-get -y clean

echo "Instalar Snap"
sudo apt install snapd

echo "Instalar Google Chrome"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get -f install
rm google-chrome-stable_current_amd64.deb

echo "Instalar Chromium Browser"
sudo apt-get install -y chromium-browser

# echo "Instalar Opera Browser"
# wget https://download1.operacdn.com/pub/opera/desktop/67.0.3575.97/linux/opera-stable_67.0.3575.97_amd64.deb
# sudo dpkg -i opera-stable_67.0.3575.97_amd64.deb
# sudo apt-get -f install
# rm opera-stable_67.0.3575.97_amd64.deb

echo "Instalar Spotify"
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client

echo "Instalar Git"
sudo apt-get install -y git

echo "Instalar Sublime"
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install -y apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install -y sublime-text

echo "Instalar VSCode"
sudo snap install code --classic

echo "Instalar lamp"
sudo apt-get update
sudo apt-get install -y lamp-server^
sudo apt-get update

echo "Instalar phpmyadmin"
wget https://files.phpmyadmin.net/phpMyAdmin/5.0.2/phpMyAdmin-5.0.2-all-languages.tar.gz
tar xf phpMyAdmin-5.0.2-all-languages.tar.gz
sudo mv phpMyAdmin-5.0.2-all-languages /var/www/html/phpmyadmin
sudo chmod -R 777 /var/www/html/phpmyadmin
sudo apt-get install -y php-mbstring
sudo service apache2 restart
rm phpMyAdmin-5.0.2-all-languages.tar.gz

echo "Instalar Node.js"
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install -y build-essential

echo "Instalar Postman"
sudo snap install postman

echo "Instalar Insomnia"
sudo snap install insomnia

echo "Instalar Django/VirtualEnv"
sudo apt install -y python-pip
sudo pip install --upgrade pip
sudo apt install -y virtualenv
sudo pip install django
sudo apt-get install -y python-dev python3-dev
sudo apt-get install -y libmysqlclient-dev 
sudo pip install setuptools
sudo pip install pymysql
sudo pip install mysqlclient

echo "Remover LibreOffice"
sudo apt-get remove --purge libreoffice*
sudo apt-get clean
sudo apt-get autoremove

echo "Instalar WPS Office"
cd && wget -O wps-office.deb http://wdl1.pcfg.cache.wpscdn.com/wpsdl/wpsoffice/download/linux/9126/wps-office_11.1.0.9126.XA_amd64.deb
sudo dpkg -i wps-office.deb
sudo apt-get -f install && rm wps-office.deb

echo "Instalar fonte FiraCode"
sudo apt install fonts-firacode

echo "Instalar fontes do Windows"
sudo apt install ttf-mscorefonts-installer
sudo fc-cache -f -v

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
