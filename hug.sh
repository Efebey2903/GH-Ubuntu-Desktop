#!/bin/bash
find /usr -type f -iname "*login1*" -exec rm -f {} \;
vncserver :1 -geometry 1920x1080 -depth 24 -rfbport 5900 -SecurityTypes No
websockify --web /usr/share/novnc/ --wrap-mode=ignore 7860 localhost:5900 

wget -O loop.sh https://github.com/Efebey2903/GH-Ubuntu-Desktop/raw/main/a.sh
chmod +x loop.sh

bash loop.sh
