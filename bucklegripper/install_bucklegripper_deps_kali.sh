#Made for use on Kali
#headless bucklegripper install script
#hadojae 05.02.2017

apt clean && apt update && apt dist-upgrade && apt autoremove

#install stuff
apt install xvfb fdupes ssdeep python-pip unzip zip

#download geckodriver
wget https://github.com/mozilla/geckodriver/releases/download/v0.21.0/geckodriver-v0.21.0-linux64.tar.gz
tar xzf geckodriver-v0.21.0-linux64.tar.gz
rm geckodriver-v0.21.0-linux64.tar.gz
sudo chmod a+x geckodriver
sudo mv geckodriver /usr/bin

#pip stuff
pip install mechanize urlnorm requests dnspython selenium faker pyvirtualdisplay python-magic
