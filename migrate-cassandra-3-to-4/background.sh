# !/bin/bash

echo "force downgradde Java to JDK 8"
sudo rm -r /usr/lib/jvm
apt-get update
sudo apt-get -y install openjdk-8-jdk openjdk-8-jre