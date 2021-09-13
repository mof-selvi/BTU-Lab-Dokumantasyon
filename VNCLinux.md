Linux Mint lightdm kullanmakta ve X11Vnc ile uyumlu çalışmaktadır.

x11vnc yüklenir
```
sudo apt install x11vnc
```

x11vnc servis dosyası oluşturulur
```
sudo nano /etc/systemd/system/x11vnc.service
```


x11vnc.service dosyası içeriği
```
# Description: Custom Service Unit file
# File: /etc/systemd/system/x11vnc.service
[Unit]
Description="x11vnc"
Requires=display-manager.service
After=display-manager.service

[Service]
ExecStart=/usr/bin/x11vnc -loop -nopw -xkb -repeat -noxrecord -noxfixes -noxdamage -shared -forever -rfbport 5900 -display :0 -auth guess -viewonly
ExecStop=/usr/bin/killall x11vnc
Restart=on-failure
RestartSec=2

[Install]
WantedBy=multi-user.target
```


Servis aktifleştirilir
```
sudo systemctl enable x11vnc.service
```

Bilgisayar yeniden başlatıldığında hoca bilgisayarının ekranı lab2teacher.local:5900 üzerinden view-only modda görüntülenebilir olacaktır.

netstat komutuyla 5900, 5901 gibi portlarının dinlemede olup olmadığı görülebilir.
```
sudo netstat -plutn | grep :590
```
