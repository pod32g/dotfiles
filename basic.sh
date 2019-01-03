#!/bin/bash 
#Basic first steps intallation

#Installing basic software
apt install g++ gcc python-pip python3-pip default-jdk default-jre

#Install sublime text
echo "Adding sublime text ppa and installing"
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text

#Install vscode
echo "Downloading and installing vscode"
wget "https://az764295.vo.msecnd.net/stable/dea8705087adb1b5e5ae1d9123278e178656186a/code_1.30.1-1545156774_amd64.deb"
sudo dpkg -i *.deb
rm *.deb

#Install android studio
echo "Adding android studio marten fonville ppa"
add-apt-repository ppa:maarten-fonville/android-studio
apt update
apt install android-studio

#Install Flutter
wget "https://storage.googleapis.com/flutter_infra/releases/stable/linux/flutter_linux_v1.0.0-stable.tar.xz"
tar xf ~/Downloads/flutter_linux_v1.0.0-stable.tar.xz -C /opt/flutter
echo "Flutter downloaded to /opt/flutter, now update your path"
echo "if [ -d "/opt/flutter" ] ; then
        PATH="/opt/flutter/bin:$PATH"
      fi"


echo "Copying dotfiles"
cp .bashrc ~/.bashrc 
cp .vimrc ~/.vimrc
cp .bash_aliases ~/.bash_aliases

echo "Done"

