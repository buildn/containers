#!/bin/bash

cd /bin
set -m
sh zookeeper-server-start /etc/kafka/zookeeper.properties &
sh kafka-server-start /etc/kafka/server-1.properties &
sh kafka-server-start /etc/kafka/server-2.properties &
sh kafka-server-start /etc/kafka/server-3.properties &
sh kafka-server-start /etc/kafka/server-4.properties &
sh schema-registry-start /etc/schema-registry/schema-registry.properties &
sh control-center-start /etc/confluent-control-center/control-center.properties

fg %1

