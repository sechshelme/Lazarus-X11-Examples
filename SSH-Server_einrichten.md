#Linux vorbereiten
Quelle: 
[INOIS](https://www.ionos.de/digitalguide/server/konfiguration/ubuntu-ssh/)
## Terminal aufrufen

[Ctrl]+[Alt]+[t]

## Ubuntu-SSH-Service installieren

```bash
sudo apt install openssh-server
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

