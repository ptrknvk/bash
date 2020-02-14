wget -O - http://deb.opera.com/archive.key | sudo apt-key add -
sudo sh -c 'echo "deb http://deb.opera.com/opera-stable/ stable non-free" >> /etc/apt/sources.list.d/opera.list'
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_16.04/ /' > /etc/apt/sources.list.d/home:Horst3180.list"
wget -nv https://download.opensuse.org/repositories/home:Horst3180/xUbuntu_16.04/Release.key -O Release.key
sudo apt-key add - < Release.key

sudo apt-get update

sudo apt-get install -y sublime-text git vlc steam nano opera-stable chromium-browser arc-theme pidgin linphone indicator-multiload indicator-cpufreq unity-tweak-tool automake autoconf

git clone https://github.com/horst3180/arc-theme --depth 1 && cd arc-theme
./autogen.sh --prefix=/usr
sudo make install

indicator-cpufreq
