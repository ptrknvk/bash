wget -O - http://deb.opera.com/archive.key | sudo apt-key add -
sudo sh -c 'echo "deb http://deb.opera.com/opera-stable/ stable non-free" >> /etc/apt/sources.list.d/opera.list'

sudo apt-get update

sudo snap install telegram-desktop
sudo apt-get install -y sublime-text vlc steam nano opera-stable chromium-browser pidgin linphone indicator-multiload indicator-cpufreq unity-tweak-tool

git clone https://github.com/horst3180/arc-theme --depth 1 && cd arc-theme
./autogen.sh --prefix=/usr
sudo make install

indicator-cpufreq