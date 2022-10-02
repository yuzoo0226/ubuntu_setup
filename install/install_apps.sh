# install slack
#sudo snap install slack

# install vscode
#sudo snap install --classic code

# install google chrome
#wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#sudo dpkg -i google-chrome-stable_current_amd64.deb
#rm google-chrome-stable_current_amd64.deb
# google-chrome

echo "install atom"
wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
sudo apt update
sudo apt install atom -y

sh atom_packages.sh

echo "install handbrake"
sudo add-apt-repository ppa:stebbins/handbrake-releases
sudo apt-get update
sudo apt-get install handbrake -y

echo " install texlive"
sudo apt install texlive-full -y

echo "install meshlab "
sudo apt install meshlab -y

echo "install gimp "
sudo apt install gimp -y

echo "gnome tweaks"
sudo apt install gnome-tweaks -y

echo "install teams"
curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/ms-teams stable main" > /etc/apt/source>
sudo apt update
sudo apt install teams
