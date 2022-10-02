sudo apt update
sudo apt upgrade -y

sudo apt install git -y
sudo apt install curl -y

# setting language
sudo apt install fcitx fcitx-mozc -y

sh install/install_apps.sh

echo -e "setting alias"
sudo echo "alias ca='conda activate'" | sudo tee -a ~/.bashrc > /dev/null
sudo echo "alias cda='conda deactivate'" | sudo tee -a ~/.bashrc > /dev/null

echo "settings >> Region & Language >> Manage Install Languages >> Install"
echo "please reboot your computer"
# sudo reboot
