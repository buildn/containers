#!/bin/bash

cd /bin
set -m
sh zookeeper-server-start /etc/kafka/zookeeper.properties &
sh kafka-server-start /etc/kafka/server.properties &
sh schema-registry-start /etc/schema-registry/schema-registry.properties &
sh control-center-start /etc/confluent-control-center/control-center-minimal.properties

fg %1

