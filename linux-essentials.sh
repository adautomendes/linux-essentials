sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade
sudo apt-get -y autoclean
sudo apt-get -y autoremove
sudo apt-get -y clean

echo "Instalar Google Chrome"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get -f install
rm google-chrome-stable_current_amd64.deb

echo "Instalar Chromium Browser"
sudo apt-get install -y chromium-browser

echo "Instalar Opera Browser"
wget http://download1.operacdn.com/pub/opera/desktop/50.0.2762.67/linux/opera-stable_50.0.2762.67_amd64.deb
sudo dpkg -i opera-stable_50.0.2762.67_amd64.deb
sudo apt-get -f install
rm opera-stable_50.0.2762.67_amd64.deb

echo "Instalar Spotify"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0DF731E45CE24F27EEEB1450EFDC8610341D9410
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install spotify-client

echo "Instalar Git"
sudo apt-get install -y git

echo "Instalar Sublime"
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install -y apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install -y sublime-text

echo "Instalar VSCode"
wget https://az764295.vo.msecnd.net/stable/41abd21afdf7424c89319ee7cb0445cc6f376959/code_1.15.1-1502903936_amd64.deb
sudo dpkg -i code_1.15.1-1502903936_amd64.deb
sudo apt-get install -f
rm code_1.15.1-1502903936_amd64.deb

echo "Instalar lamp"
sudo apt-get update
sudo apt-get install -y lamp-server^
sudo apt-get update

echo "Instalar phpmyadmin"
wget https://files.phpmyadmin.net/phpMyAdmin/4.6.6/phpMyAdmin-4.6.6-all-languages.tar.bz2
tar xf phpMyAdmin-4.6.6-all-languages.tar.bz2
sudo mv phpMyAdmin-4.6.6-all-languages /var/www/html/phpmyadmin
sudo chmod -R 777 /var/www/html/phpmyadmin
sudo apt-get install -y php-mbstring
sudo service apache2 restart
rm phpMyAdmin-4.6.6-all-languages.tar.bz2

echo "Instalar Node.js"
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install -y build-essential

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
cd && wget -O wps-office.deb http://kdl1.cache.wps.com/ksodl/download/linux/a21//wps-office_10.1.0.5707~a21_amd64.deb
sudo dpkg -i wps-office.deb
sudo apt-get -f install && rm wps-office.deb
wget -O web-office-fonts.deb http://kdl.cc.ksosoft.com/wps-community/download/fonts/wps-office-fonts_1.0_all.deb
sudo dpkg -i web-office-fonts.deb
sudo apt-get -f install && rm web-office-fonts.deb

echo "Instalar fontes do Windows"
sudo apt install ttf-mscorefonts-installer
sudo fc-cache -f -v

echo "Instalar fonte Monaco"
cd /usr/share/fonts/truetype/
sudo mkdir ttf-monaco
cd ttf-monaco/
sudo wget http://www.gringod.com/wp-upload/software/Fonts/Monaco_Linux.ttf
sudo mkfontdir
cd ..
fc-cache

echo "Instalar Dropbox"
wget https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2015.10.28_amd64.deb
cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
sudo dpkg -i download\?dl\=packages%2Fubuntu%2Fdropbox_2015.10.28_amd64.deb

sudo shutdown -r 0
