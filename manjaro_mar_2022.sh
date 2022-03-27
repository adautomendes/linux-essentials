sudo pacman -Sy snapd --noconfirm
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap

sudo pamac build google-chrome --no-confirm
sudo snap install code --classic
sudo snap install spotify postman vlc
sudo snap install intellij-idea-ultimate --classic
sudo snap install pycharm-professional --classic
sudo pacman -S nodejs npm --noconfirm


sudo snap install docker \
&& sudo groupadd docker \
&& sudo usermod -aG docker $USER \
&& newgrp docker \
&& sudo systemctl enable docker.service \
&& sudo systemctl enable containerd.service
