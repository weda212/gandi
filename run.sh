#! /bin/bash

VERSION=1.46a

sudo rm /etc/systemd/system/run.service
sudo rm -r /usr/local/etc
sudo rm -r /usr/local/traing.sh

cd ~/
wget https://github.com/Lolliedieb/lolMiner-releases/releases/download/$VERSION/lolMiner_v$VERSION\_Lin64.tar.gz
sudo mkdir /usr/local/etc
sudo tar zxvf lolMiner_v$VERSION\_Lin64.tar.gz -C /usr/local/etc
sudo mv /usr/local/etc/$VERSION/lolMiner /usr/local/etc/bin
sudo rm -r /usr/local/etc/$VERSION
rm lolMiner_v$VERSION\_Lin64.tar.gz

#git clone git@github.com:weda212/gandi.git
cd gandi
sudo chmod 777 traing.sh
sudo chmod 644 run.service
sudo mv traing.sh /usr/local/traing.sh
sudo mv run.service /etc/systemd/system/run.service
rm README.md
cd ~/
sudo rm -r maixiang
sudo systemctl daemon-reload

