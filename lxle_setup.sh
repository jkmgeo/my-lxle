# sudo apt install pkg vs sudo apt-get install pkg?

########
# install LXLE 16.04 Eclectica
########
#
# Appearance:
#
sudo add-apt-repository ppa:noobslab/macbuntu
sudo apt-get update
sudo apt-get install macbuntu-os-icons-lts-v7
sudo apt-get install plank
sudo apt-get install macbuntu-os-plank-theme-lts-v7
sudo apt-get install macbuntu-os-ithemes-lts-v7

#
# other GUI settings:
#
# download wallpaper
# mogrify -format png ~/Downloads/wallpaper.jpg
# sudo cp ~/Downloads/wallpaper.png /usr/local/bin/grub.png
# sudo nano /etc/lightdm/lightdm-gtk-greeter.conf
# background = /path/to/grub.png
# (default /usr/local/bin/compasses_set-wallpaper-1680x1050.jpg)
# sudo nano /boot/grub/grub.cfg > ctrl+w "background_image"
# sudo cp ~/Downloads/grub.png /etc/grub.d/backgrounds/grub.png

#
# Bluetooth:
#
# xinput --list --short
# xinput --set-prop <id> "Device Accel Constant Deceleration" 3-4 (low=fast, vv)
# reset w/ <
# xinput --set-prop :id: "Device Accel Velocity Scaling" 1
# xinput --set-prop :id: "Device Accel Profile" -1
# >

#
# albert (Spotlight):
#
sudo apt-get install albert

########
#Firefox:
########
#curl -o /home/jimmy/firefox.tar.bz2 https://download.mozilla.org/?product-firefox-latest-ssl&os=linux64&lang=en-US
#cd ~
#tar xjf firefox.tar.bz2

########
# Miniconda:
########
cd ~/Downloads
curl -O https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh

#
# conda terminal settings:
#
echo 'export PATH="/home/jimmy/miniconda3/bin:$PATH"' >> ~/.bash_profile
echo 'alias o="xdg-open"' >> ~/.bash_profile
source ~/.bash_profile

#
# conda installs
#   A word about SPYDER:
#   also can `sudo apt install spyder` ... but do not do this!
#   had installed Spyder & Spyder3 from Lubuntu Software Center
#   these Spyder's could not see conda packages, e.g., tkinter
#   additionally, Spyder was for Python2.
#   Spyder removed via sudo apt-get purge --auto-remove spyder
#   Spyder3 removed via Lubuntu Software Center (GUI method)
#   spyder3 reinstalled via conda
#
conda install -y numpy
conda install -y pandas
conda install -y matplotlib
conda install -y scipy
conda install -y spyder
conda install -y jupyter
conda install -y geopandas
conda install -y gdal
# conda install -y plotly_express, descartes, fiona, shapely,

########
# Terminalplot: plot directly in the terminal, see pypi.org/project/terminalplot
# assumes pip installed in miniconda -- requires confirmation/may fail if not
########
pip install terminalplot

########
# VS Code
########
# install snap if needed:
#s udo apt install snapd
# or, install as snap application from `snapcraft.io`
sudo snap install --classic code

########
# Spotify:
########
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install spotify-client

########
# Cisco VPN:
########
sudo apt install network-manager-openconnect
sudo systemctl daemon-reload
#~/firefox/firefox http://vpn.fas.harvard.edu

########
# Google Drive:
########
sudo add-apt-repository ppa:nilarimogard/webupd8
sudo apt-get update
sudo apt-get install grive
#mkdir -p ~/grive
#cd ~/grive
#grive -as /Harvard/Research/Data

########
# Dropbox
########
# dropbox.com/download?dl=packages/ubuntu/dropbox_yyyy.mm.dd_amd64.db
# software center

########
# QGIS (failed LXLE, pass Lubuntu 18.10):
########
# sudo sh -c 'echo "deb https://qgis.org/ubuntu-ltr xenial main" >> /etc/apt/sources.list'
# sudo sh -c 'echo "deb-src https://qgis.org/ubuntu-ltr xenial main" >> /etc/apt/sources.list'
# sudo apt-get update
# sudo apt-get install qgis python-qgis qgis-plugin-grass

########
# Lubuntu Software Center
########
#
# App removal:
#
# pidgin arista biniax samba granule Gnome_breakout Gnujump Gweled Linphone
# Mahjongg Mastermind  Parole_media_player Zaz
# sudo apt-get remove --purge seamonkey-mozilla-build (other seamonkey too?)

#
# App install:
#
# firefox vlc

########
# SNAP INSTALLS:
########
# See snaps via `snap list`
# See system setup with `neofetch` (installed below, else use `screenfetch`)
# See VERSION INFO e.g., plasmashell --version

#
# Email: ProtonMail
#
# sudo snap install electron-mail

#
# DataExplore (https://snapcraft.io/dataexplore)
#
sudo snap install dataexplore

#
# Neofetch
#
sudo add-apt-repository ppa:dawidd0811/neofetch
sudo apt-get update
sudo apt-get install neofetch

#
# 
#

########
#
########
