sudo apt update
sudo apt upgrade -y
sudo apt install git -y
sudo apt install git-lfs -y
sudo apt install wget -y
sudo apt install curl -y

# 古いバージョンのDockerが入っている場合は削除
sudo apt-get remove docker docker-engine docker.io containerd runc

# 必要モジュールの追加
sudo apt update
sudo apt install apt-transport-https ca-certificates curl gnupg -y

# Dockerの鍵を追加
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# 公式リポジトリの追加
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Dockerのインストール
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io -y

# Dockerの起動テスト（Option）
# sudo docker run hello-world

# sudoなしでDockerを使用できるようにするためのコマンド
sudo groupadd docker
sudo usermod -aG docker $USER

echo "please reboot your computer"
# PCを再起動する
# reboot
