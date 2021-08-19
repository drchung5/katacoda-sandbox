# !/bin/bash
echo "force downgrade Java to JDK 8"
sudo rm -r /usr/lib/jvm
apt-get update > /dev/null 2>&1
sudo apt-get -y install openjdk-8-jdk openjdk-8-jre < "/dev/null" > /dev/null 2>&1 

until [[ -e /usr/lib/jvm/java-8-openjdk-amd64 && -e /usr/bin/java ]]
do
     sleep 1
     echo -n '.'
done

# Install Cassandra 3.11.9
echo "install Cassandra 3.11.9"
wget https://archive.apache.org/dist/cassandra/3.11.9/apache-cassandra-3.11.9-bin.tar.gz > /dev/null 2>&1
tar xzf apache-cassandra-3.11.9-bin.tar.gz
mv apache-cassandra-3.11.9 /usr/share/cassandra
rm apache-cassandra-3.11.9-bin.tar.gz
export JAVA_HOME="/usr" # Casandra appends /bin/java
export PATH="$PATH:/usr/bin:/usr/share/cassandra/bin:/usr/share/cassandra/tools/bin"

cassandra -R > /dev/null 2>&1
while [ `grep "Starting listening for CQL clients" /usr/share/cassandra/logs/system.log | wc -l` -lt 1 ]; do sleep 10; done
echo "done" >> /opt/katacoda-background-finished
echo "*** Cassandra is set up ***"