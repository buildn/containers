## Configure Docker settings in IntelliJ IDE

### To build image and run container
```shell script

docker build -t <image_tag> .
&& docker run
-p 29021:9021 -p 29092:29092 -p 29094:29094 -p 29096:29096 -p 29098:29098 -p 22181:2181
--name confluent-kafka
-h confluent-kafka
<image_tag> 

```


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

### Kafka CLI commands

```shell script
cd ~/Work/kafka_2.12-2.3.0/bin/
sh kafka-topics.sh --create --topic TestTopic2 --zookeeper localhost:22181 --partitions 4 --replication-factor 2

sh kafka-console-producer.sh --broker-list localhost:29092,localhost:29094,localhost:29096,localhost:29098 --topic TestTopic2
sh kafka-console-consumer.sh --bootstrap-server localhost:29092,localhost:29094,localhost:29096,localhost:29098 --topic TestTopic2 --from-beginning

```
# Login to kafka container
```shell script
docker exec -it confluent-kafka /bin/bash
```