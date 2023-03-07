#!/bin/bash 
sudo apt-get -y update 
sudo apt-get -y upgrade 
sudo apt-get install -y libcurl4-openssl-dev 
sudo apt-get install -y libssl-dev 
sudo apt-get install -y jq 
sudo apt-get install -y ruby-full 
sudo apt-get install -y libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev 
sudo apt-get install -y build-essential libssl-dev libffi-dev python-dev 
sudo apt-get install -y python-setuptools 
sudo apt-get install -y libldns-dev 
sudo apt-get install -y python3-pip 
sudo apt-get install -y python-pip 
sudo apt-get install -y python-dnspython 
sudo apt-get install -y git 
sudo apt-get install -y rename 
sudo apt-get install -y xargs 
#installing go 
echo "Installing Golang" 
wget https://go.dev/dl/go1.20.1.linux-amd64.tar.gz 
sudo tar -xvf go1.20.1.linux-amd64.tar.gz 
sudo mv go /usr/local 
export GOROOT=/usr/local/go 
export GOPATH=$HOME/go 
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH 
echo 'export GOROOT=/usr/local/go' >> ~/.bash_profile 
echo 'export GOPATH=$HOME/go'	>> ~/.bash_profile			 
echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.bash_profile	 
source ~/.bash_profile 
sleep 1 
break 
;; 
#create a tools folder in ~/ 
mkdir ~/tools 
cd ~/tools/ 
#install Assetfinder 
echo "Installing Assetfinder" 
go install github.com/tomnomnom/assetfinder@latest 
echo "done" 
#install JSParser 
echo "installing JSParser" 
git clone https://github.com/nahamsec/JSParser.git 
cd JSParser* 
sudo python setup.py install 
cd ~/tools/ 
echo "done" 
#install Sublist3r 
echo "installing Sublist3r" 
git clone https://github.com/aboul3la/Sublist3r.git 
cd Sublist3r* 
pip install -r requirements.txt 
cd ~/tools/ 
echo "done" 
echo "installing Findomain" 
wget https://github.com/Findomain/Findomain/releases/download/8.2.2/findomain-linux.zip 
unzip findomain-linux.zip 
chmod +x findomain 
cd ~/tools/ 
echo "done" 
echo "installing waybackurls" 
go install github.com/tomnomnom/waybackurls@latest 
cd ~/tools/ 
echo "done" 
echo "installing httprobe" 
go install github.com/tomnomnom/httprobe@latest 
cd ~/tools/ 
echo "done" 
echo "installing fff" 
go install github.com/tomnomnom/fff@latest 
cd ~/tools/ 
echo "done" 
echo "installing gf" 
go install github.com/tomnomnom/gf@latest 
git clone https://github.com/tomnomnom/gf.git 
cd ~/tools/ 
echo "done" 
echo "installing wpscan" 
git clone https://github.com/wpscanteam/wpscan.git 
cd wpscan* 
sudo gem install bundler && bundle install --without test 
cd ~/tools/ 
echo "done" 
echo "installing dirsearch" 
git clone https://github.com/maurosoria/dirsearch.git 
cd ~/tools/ 
echo "done" 
echo "installing virtual host discovery" 
git clone https://github.com/jobertabma/virtual-host-discovery.git 
cd ~/tools/ 
echo "done" 
echo "installing sqlmap" 
git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap-dev 
cd ~/tools/ 
echo "done" 
echo "installing knock.py" 
git clone https://github.com/guelfoweb/knock.git 
cd ~/tools/ 
echo "done" 
echo "installing nmap" 
sudo apt-get install -y nmap 
echo "done" 
echo "installing massdns" 
git clone https://github.com/blechschmidt/massdns.git 
cd ~/tools/massdns 
make 
cd ~/tools/ 
echo "done" 
echo "installing asnlookup" 
git clone https://github.com/yassineaboukir/asnlookup.git 
cd ~/tools/asnlookup 
pip install -r requirements.txt 
cd ~/tools/ 
echo "done" 
echo "installing unfurl" 
go install github.com/tomnomnom/unfurl@latest 
echo "done" 
echo "installing crtndstry" 
git clone https://github.com/nahamsec/crtndstry.git 
echo "done" 
echo "downloading Seclists" 
cd ~/tools/ 
git clone https://github.com/danielmiessler/SecLists.git 
cd ~/tools/SecLists/Discovery/DNS/ 
##THIS FILE BREAKS MASSDNS AND NEEDS TO BE CLEANED 
cat dns-Jhaddix.txt | head -n -14 > clean-jhaddix-dns.txt 
cd ~/tools/ 
echo "done" 
echo -e "\n\n\n\n\n\n\n\n\n\n\nDone! All tools are set up in ~/tools" 
ls -la
