#Linux vorbereiten
Quelle: 
[INOIS](https://www.ionos.de/digitalguide/server/konfiguration/ubuntu-ssh/)
## Terminal aufrufen

[Ctrl]+[Alt]+[t]

## Ubuntu-SSH-Service installieren

```bash
sudo apt install openssh-server
```
Nur Client:
```bash
sudo apt install openssh-client
```

## Status überprüfen und Ubuntu-SSH-Server ggf. aktivieren

```bash
sudo systemctl status ssh
```
Mit "q" beenden

## Wen inaktiv

```bash
sudo systemctl enable ssh
sudo systemctl start ssh
```

## SSH-Port öffnen

```
sudo ufw allow ssh
```

## Ubuntu-SSH-Server konfigurieren

```
sudo nano /etc/ssh/sshd_config
```

## Bei Änderung von "sshd_config"
```
sudo service ssh restart 
```

IP ermitteln
```bash
hostname -I
```


# Windows vorbereiten
- [MobaXterm](https://mobaxterm.mobatek.net/demo.html)
# Linux
```bash
ssh 192.168.0.200 -XC
```

# Diverse X-Server-Clients
## Xephyr
Installation:
```bash
sudo apt-get install xserver-xephyr 
```
Ausführen:
Beispiel auf Display ":13"
```bash
Xephyr :13
DISPLAY=:13
```




- [Infos](https://wiki.ubuntuusers.de/Xephyr/)



