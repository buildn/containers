#!/bin/bash

cd /bin
set -m
nohup zookeeper-server-start /etc/kafka/zookeeper.properties > /tmp/zookeeper-out.lot 2> /tmp/zookeeper-err.log &
nohup kafka-server-start /etc/kafka/server-1.properties > /tmp/kafka-broker-1-out.log 2> /tmp/kafka-broker-1-err.log &
nohup kafka-server-start /etc/kafka/server-2.properties > /tmp/kafka-broker-2-out.log 2> /tmp/kafka-broker-2-err.log &
nohup kafka-server-start /etc/kafka/server-3.properties > /tmp/kafka-broker-3-out.log 2> /tmp/kafka-broker-3-err.log &
nohup kafka-server-start /etc/kafka/server-4.properties > /tmp/kafka-broker-4-out.log 2> /tmp/kafka-broker-4-err.log &
nohup schema-registry-start /etc/schema-registry/schema-registry.properties > /tmp/schema-registry-out.log 2> /tmp/schema-registry-err.log &
nohup connect-standalone /etc/kafka/connect-standalone.properties /etc/kafka/connect-file-source.properties /etc/kafka/connect-file-sink.properties > /tmp/connector-file.log 2>&1 &
nohup control-center-start /etc/confluent-control-center/control-center.properties > /tmp/control-center-out.log 2> /tmp/control-center-err.log &

fg %1
