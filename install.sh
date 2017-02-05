

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
wget https://raw.githubusercontent.com/teabot5000/Evilportal-wifi-connect/master/static/behavior.js
wget https://raw.githubusercontent.com/teabot5000/Evilportal-wifi-connect/master/static/win-behavior.js
wget https://raw.githubusercontent.com/teabot5000/Evilportal-wifi-connect/master/static/dinosaur.png
wget https://raw.githubusercontent.com/teabot5000/Evilportal-wifi-connect/master/static/mac-network-manager.css
wget https://raw.githubusercontent.com/teabot5000/Evilportal-wifi-connect/master/static/opensans.ttf
wget https://raw.githubusercontent.com/teabot5000/Evilportal-wifi-connect/master/static/style.css
wget https://raw.githubusercontent.com/teabot5000/Evilportal-wifi-connect/master/static/chrome-offline.css
wget https://raw.githubusercontent.com/teabot5000/Evilportal-wifi-connect/master/static/jquery.js
wget https://raw.githubusercontent.com/teabot5000/Evilportal-wifi-connect/master/static/opensans.css
wget https://raw.githubusercontent.com/teabot5000/Evilportal-wifi-connect/master/static/question.png
wget https://raw.githubusercontent.com/teabot5000/Evilportal-wifi-connect/master/static/wifi-icon.png

echo "[-] Done!"