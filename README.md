## Configure Docker settings in IntelliJ IDE

### To Stop/ Start Docker daemon
```shell script
sudo systemctl stop docker
sudo systemctl start docker
```

### To add User to docker group
```shell script
sudo groupadd docker
sudo usermod -aG docker $USER
```

### To add rwx permission to files

```shell script
sudo chmod a+rwx /var/run/docker.sock
sudo chmod a+rwx /var/run/docker.pid
```
