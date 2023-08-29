echo "setting time server"
sudo cp /etc/systemd/timesyncd.conf /etc/systemd/timesyncd.conf.bak
sudo sed -i 's/#NTP=/NTP=ntp1.lsse.kyutech.ac.jp/' /etc/systemd/timesyncd.conf
sudo systemctl restart systemd-timesyncd.service