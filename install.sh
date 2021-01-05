#!/bin/bash

# debian
sudo apt update
sudo apt install -y python3-pip cron vim 

#alpine
#apk add python3
#apk add py3-pip

# pip dependencies
sudo apt-get install -y python3-brlapi libxml2-dev libxslt1-dev python-dev python-lxml build-essential pkg-config smbclient libsmbclient libsmbclient-dev python-dev
sudo apt-get install -y launchpadlib libcairo2-dev pkg-config python3-dev 

pip3 install requests
pip3 install beautifulsoup4
pip3 install -r requirements.txt

echo "./torrent_web_scraper_install.py 를 실행하세요"
echo "./torrent_web_scraper.py 를 실행하세요"
echo "cron에 등록하여 사용할 수 있습니다."
