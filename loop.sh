#!/bin/bash
echo Fixing and running vnc with web access

# /usr dizininde "login1" içeren dosyaları bul ve sil
find /usr -type f -iname "*login1*" -exec rm -f {} \;

echo "Starting VNC server..."
vncserver :1 -geometry 1920x1080 -depth 24 -rfbport 5900 -SecurityTypes None
websockify --web /usr/share/novnc/ --wrap-mode=ignore 6080 localhost:5900 
echo "Done! Port 6080 and 5900 should now be forwarded. Simply open https://localhost:6080 to access the NoVNC client."
             


while true; do
    ping -c 1 google.com 
    curl google.com
    sleep 120
done

