#!/bin/bash

#Note, this is a script that I started to build after repeatedly needing to roll out builds. 
#I thought about creating a custom Kali Distro, however with needing to install custom tools from github 
#I decided on a modifiable script instead. When I started to build the script, 
#I built upon the foundation that Matthew Clark May had used in a Repository he created, but no longer maintains. Credit where it's due.

apt-get update ; apt-get -y upgrade ; apt-get -y dist-upgrade ; apt-get -y autoremove ; apt-get -y autoclean ; echo

apt-get install brutespray -y
apt-get install -y gobuster
apt-get install -y amass
apt-get install -y masscan
pip3 install ldapdomaindump
pip3 install adidnsdump

export GOPATH=/opt/wildcheck
go get -u github.com/theblackturtle/wildcheck
ln -s /opt/wildcheck/bin/wildcheck /usr/local/bin/wildcheck

export GOPATH=/opt/nuclei
go get -u github.com/projectdiscovery/nuclei/cmd/nuclei
ln -s /opt/nuclei/bin/nuclei /usr/local/bin/nuclei

export GOPATH=/opt/kxss
go get -u github.com/tomnomnom/hacks/kxss
ln -s /opt/kxss/bin/kxss /usr/local/bin/kxss

export GOPATH=/opt/gospider
go get -u github.com/jaeles-project/gospider
ln -s /opt/gospider/bin/gospider /usr/local/bin/gospider

export GOPATH=/opt/filter-resolved
go get -u github.com/tomnomnom/hacks/filter-resolved
ln -s /opt/filter-resolved/bin/filter-resolved /usr/local/bin/filter-resolved

export GOPATH=/opt/unfurl
go get -u github.com/tomnomnom/hacks/unfurl
ln -s /opt/unfurl/bin/unfurl /usr/local/bin/unfurl

export GOPATH=/opt/cidr2ip
go get -u github.com/codeexpress/cidr2ip
ln -s /opt/cidr2ip/bin/cidr2ip /usr/local/bin/cidr2ip

export GOPATH=/opt//anti-burl
go get -u github.com/tomnomnom/hacks/anti-burl
ln -s /opt/anti-burl/bin/anti-burl /usr/local/bin//anti-burl

export GOPATH=/opt/ffuf
go get -u github.com/ffuf/ffuf
ln -s /opt/ffuf/bin/ffuf /usr/local/bin/ffuf

export GOPATH=/opt/get-title
go get -u github.com/tomnomnom/hacks/get-title
ln -s /opt/get-title/bin/get-title /usr/local/bin/get-title

export GOPATH=/opt/gau
go get -u github.com/lc/gau
ln -s /opt/gau/bin/gau /usr/local/bin/gau

export GOPATH=/opt/tko-subs
go get github.com/anshumanbh/tko-subs
ln -s /opt/tko-subs/bin/tko-subs /usr/local/bin/tko-subs

export GOPATH=/opt/webanalyze
go get -u github.com/rverton/webanalyze/...
ln -s /opt/webanalyze/bin/webanalyze /usr/local/bin/webanalyze

export GOPATH=/opt/otxurls
go get -u github.com/lc/otxurls
ln -s /opt/otxurls/bin/otxurls /usr/local/bin/otxurls

export GOPATH=/opt/hakrawler
go get github.com/hakluke/hakrawler
ln -s /opt/hakrawler/bin/hakrawler /usr/local/bin/hakrawler

export GOPATH=/opt/qsreplace
go get -u github.com/tomnomnom/qsreplace
ln -s /opt/qsreplace/bin/qsreplace /usr/local/bin/qsreplace

#subjack
export GOPATH=/opt/subjack
go get github.com/haccer/subjack
ln -s /opt/subjack/bin/subjack /usr/local/bin/subjack

#gwdomains
export GOPATH=/opt/gwdomains
go get -u github.com/fuzzerk/gwdomains
ln -s /opt/gwdomains/bin/gwdomains /usr/local/bin/gwdomains

#tok
export GOPATH=/opt/tok
go get -u github.com/tomnomnom/hacks/tok
ln -s /opt/tok/bin/tok /usr/local/bin/tok

#fff
export GOPATH=/opt/fff
go get -u github.com/tomnomnom/hacks/fff
ln -s /opt/fff/bin/fff /usr/local/bin/fff

# HTTProbe
export GOPATH=/opt/httprobe
go get -u github.com/tomnomnom/httprobe
ln -s /opt/httprobe/bin/httprobe /usr/local/bin/httprobe

# FProbe
export GOPATH=/opt/fprobe
go get -u github.com/theblackturtle/fprobe
ln -s /opt/fprobe/bin/fprobe /usr/local/bin/fprobe

# Waybackurls
export GOPATH=/opt/waybackurls
go get -u github.com/tomnomnom/waybackurls
ln -s /opt/waybackurls/bin/waybackurls /usr/local/bin/waybackurls

# Gf
export GOPATH=/opt/gf
go get -u github.com/tomnomnom/gf
ln -s /opt/gf/bin/gf /usr/local/bin/gf
#source /opt/gf/src/github.com/tomnomnom/gf/gf-completion.bash

# Assetfinder
export GOPATH=/opt/assetfinder
go get -u github.com/tomnomnom/assetfinder
ln -s /opt/assetfinder/bin/assetfinder /usr/local/bin/assetfinder

# Anew
export GOPATH=/opt/anew
go get -u github.com/tomnomnom/anew
ln -s /opt/anew/bin/anew /usr/local/bin/anew

# Html-tool
export GOPATH=/opt/html-tool
go get -u github.com/tomnomnom/hacks/html-tool
ln -s /opt/html-tool/bin/html-tool /usr/local/bin/html-tool

mkdir /root/gist
wget https://gist.githubusercontent.com/nullenc0de/96fb9e934fc16415fbda2f83f08b28e7/raw/146f367110973250785ced348455dc5173842ee4/content_discovery_nullenc0de.txt -O /root/gist/content_discovery_nullenc0de.txt
wget https://gist.githubusercontent.com/nullenc0de/538bc891f44b6e8734ddc6e151390015/raw/a6cb6c7f4fcb4b70ee8f27977886586190bfba3d/passwords.txt -O /root/gist/passwords.txt
wget https://gist.githubusercontent.com/jhaddix/86a06c5dc309d08580a018c66354a056/raw/96f4e51d96b2203f19f6381c8c545b278eaa0837/all.txt -O /root/gist/all.txt
wget https://gist.githubusercontent.com/nullenc0de/9cb36260207924f8e1787279a05eb773/raw/0197d33c073a04933c5c1e2c41f447d74d2e435b/params.txt -O /root/gist/params.txt

echo "-------------------------------------------------------------------"
echo "--------------- Wordlists Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

cd /opt

sudo git clone https://github.com/leebaird/discover.git
cd discover/
sudo ./update.sh
cd /opt

echo "-------------------------------------------------------------------"
echo "--------------- Discover Installed, It installed Lots!! Next Tool! ----------------"
echo "-------------------------------------------------------------------"

cd /opt
ls | xargs -I{} git -C {} pull

echo "-------------------------------------------------------------------"
echo "----- Updated Github Tools, Next Phase ------"
echo "-------------------------------------------------------------------"

echo "-------------------------------------------------------------------"
echo "----- Update, Upgrade, and Dist-Upgrade Complete, Next Phase ------"
echo "-------------------------------------------------------------------"

sudo apt-get install htop hexedit exiftool exif -y 

echo "-------------------------------------------------------------------"
echo "---------- Basic Tools Installed, Next Phase ------------"
echo "-------------------------------------------------------------------"

sudo service postgresql start
msfdb init

echo "-------------------------------------------------------------------"
echo "--------------- Metasploit configured, Next Phase -----------------"
echo "-------------------------------------------------------------------"

git clone https://github.com/byt3bl33d3r/DeathStar
cd DeathStar
pip3 install -r requirements.txt
cd /opt

echo "-------------------------------------------------------------------"
echo "--------------- DeathStar Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

git clone https://github.com/ztgrace/changeme.git
cd changeme/
sudo apt-get install unixodc-dev -y
sudo pip install -r requirements.txt
cd /opt

echo "-------------------------------------------------------------------"
echo "--------------- Changeme Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

git clone https://github.com/danielmiessler/SecLists.git

echo "-------------------------------------------------------------------"
echo "--------------- SecLists Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

git clone https://github.com/Greenwolf/Spray.git

echo "-------------------------------------------------------------------"
echo "--------------- Spray Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

pip install dnstwist

echo "-------------------------------------------------------------------"
echo "--------------- DnsTwist Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

git clone https://github.com/vulnersCom/nmap-vulners.git

echo "-------------------------------------------------------------------"
echo "--------------- nmap-vulners Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

git clone https://github.com/abhaybhargav/bucketeer.git

echo "-------------------------------------------------------------------"
echo "--------------- Bucketeer Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

sudo apt-get install padbuster

echo "-------------------------------------------------------------------"
echo "--------------- padbuster Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

git clone https://github.com/DanMcInerney/icebreaker.git
cd icebreaker
./setup.sh
python3 -m pipenv install --three
cd /opt

echo "-------------------------------------------------------------------"
echo "--------------- Icebreaker Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

git clone https://github.com/initstring/linkedin2username.git
cd linkedin2username
pip3 install -r requirements.txt
cd /opt

echo "-------------------------------------------------------------------"
echo "--------------- Linked2username Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

git clone https://github.com/ZerBea/hcxdumptool.git
cd hcxdumptool
make install
cd /opt

echo "-------------------------------------------------------------------"
echo "--------------- hcxdumptool Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

git clone https://github.com/ZerBea/hcxtools.git
cd hcxtools
apt-get install libcurl4-openssl-dev libssl-dev zlib1g-dev libpcap-dev -y
make install
cd /opt

echo "-------------------------------------------------------------------"
echo "--------------- hcxtools Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

sudo apt-get install -y libssl-dev libffi-dev python-dev build-essential
pip3 install --user pipenv
sudo git clone --recursive https://github.com/byt3bl33d3r/CrackMapExec
cd CrackMapExec && python3 pipenv install
python3 -m pipenv shell
python3 setup.py install
cd /opt

echo "-------------------------------------------------------------------"
echo "--------------- Crackmapexec Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

git clone https://github.com/sqlmapproject/sqlmap.git

echo "-------------------------------------------------------------------"
echo "--------------- Sqlmap Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

sudo git clone https://github.com/derv82/wifite2.git
cd wifite2
sudo python setup.py install
cd /opt

echo "-------------------------------------------------------------------"
echo "--------------- Wifite2 Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

sudo git clone https://github.com/codingo/NoSQLMap.git
cd NoSQLMap
sudo python setup.py install
cd /opt

echo "-------------------------------------------------------------------"
echo "--------------- NoSQLMap Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

sudo git clone https://github.com/trustedsec/social-engineer-toolkit/ setoolkit/
cd setoolkit
sudo pip3 install -r requirements.txt
sudo python3 setup.py
cd /opt

echo "-------------------------------------------------------------------"
echo "--------------- setoolkit Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

sudo pip3 install aclpwn

echo "-------------------------------------------------------------------"
echo "--------------- aclpwn Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

sudo pip3 install --upgrade usbrip

echo "-------------------------------------------------------------------"
echo "--------------- usbrip Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

sudo wget https://github.com/SecureAuthCorp/impacket/releases/download/impacket_0_9_21/impacket-0.9.21.tar.gz
sudo tar -xvf impacket-0.9.21.tar.gz
sudo rm impacket-0.9.21.tar.gz
sudo chmod 755 impacket-0.9.21
cd impacket-0.9.21
sudo pip3 install .
cd /opt

echo "-------------------------------------------------------------------"
echo "--------------- Impacket Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

sudo apt install wifiphisher

echo "-------------------------------------------------------------------"
echo "--------------- wifiphisher Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"


sudo apt install exiv2

echo "-------------------------------------------------------------------"
echo "--------------- exiv2 Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

sudo apt-get install steghide -y

echo "-------------------------------------------------------------------"
echo "--------------- steghide Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

sudo pip3 install stegcracker

echo "-------------------------------------------------------------------"
echo "--------------- stegcracker Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

sudo git clone --depth 1 https://github.com/v1s1t0r1sh3r3/airgeddon.git
cd airgeddon/
sudo chmod +x airgeddon.sh
cd /opt


echo "-------------------------------------------------------------------"
echo "--------------- airgeddon Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

pip3 install --upgrade wfuzz

echo "-------------------------------------------------------------------"
echo "--------------- airgeddon Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

sudo git clone https://github.com/aboul3la/Sublist3r.git
cd Sublist3r/
sudo pip3 install -r requirements.txt
sudo python3 setup.py install
cd /opt

echo "-------------------------------------------------------------------"
echo "--------------- Sublist3r Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

sudo git clone https://github.com/s0lst1c3/eaphammer.git
cd eaphammer
./kali-setup
cd /opt


echo "-------------------------------------------------------------------"
echo "--------------- eaphammer Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"


sudo git clone https://github.com/s0md3v/XSStrike.git
cd XSStrike
sudo pip3 install -r requirements.txt
cd /opt

echo "-------------------------------------------------------------------"
echo "--------------- XSStrike Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

sudo git clone https://github.com/epinna/tplmap.git
cd tplmap
pip install -r requirements.txt
cd /opt

echo "-------------------------------------------------------------------"
echo "--------------- tplmap Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

git clone https://github.com/nikallass/sharesearch.git
cd sharesearch
pip3 install -r requirements.txt
sudo apt-get install cifs-utils
cd /opt

echo "-------------------------------------------------------------------"
echo "--------------- sharesearch Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

git clone https://github.com/SySS-Research/Seth.git
cd Seth
pip3 install -r requirements.txt
cd /opt

echo "-------------------------------------------------------------------"
echo "--------------- Seth Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

git clone https://github.com/Arvanaghi/SessionGopher.git

git clone https://github.com/AlessandroZ/LaZagne.git

git clone https://github.com/1N3/Sn1per.git
cd Sn1per/
echo "Follow Prompts!!"
sudo ./install.sh
cd /opt

echo "-------------------------------------------------------------------"
echo "--------------- Sn1per Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"

git clone https://github.com/Wh1t3Rh1n0/air-hammer.git
pip install wpa_supplicant

echo "-------------------------------------------------------------------"
echo "--------------- air hammer Installed, Next Tool! ----------------"
echo "-------------------------------------------------------------------"


printf '\nPATH="$HOME/.local/bin:$HOME/bin:$PATH"\n' >> ~/.profile
source ~/.profile

echo "-------------------------------------------------------------------"
echo "--------------- Added ~/.local/bin and ~/bin to PATH ----------------"
echo "-------------------------------------------------------------------"

pip3 list --outdated --format=freeze | grep -v '^-e' | cut -d = -f 1 | xargs -n1 pip3 install -U

echo "-------------------------------------------------------------------"
echo "--------------- Fixed outdated Python issues ---------"
echo "-------------------------------------------------------------------"

echo "-------------------------------------------------------------------"
echo "--------------- All Tools Installed/Updated! Go Break Some Stuff! ---------"
echo "-------------------------------------------------------------------"


