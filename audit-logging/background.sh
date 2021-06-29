#!/bin/bash
export JAVA_HOME="/usr/lib/jvm/default-java"
wget https://archive.apache.org/dist/cassandra/4.0-rc2/apache-cassandra-4.0-rc2-bin.tar.gz
tar xzf apache-cassandra-4.0-rc2-bin.tar.gz
sed -i 's/^cluster_name: .*$/cluster_name: "Cassandra Cluster"/g' apache-cassandra-4.0-rc2/conf/cassandra.yaml
#sed -i "s/^num_tokens:.*$/num_tokens: 1/g" apache-cassandra-4.0-rc2/conf/cassandra.yaml
#sed -i "s/^# initial_token:.*$/initial_token: -9223372036854775808/g" apache-cassandra-4.0-rc2/conf/cassandra.yaml
sed -i 's/^endpoint_snitch: .*$/endpoint_snitch: GossipingPropertyFileSnitch/g' apache-cassandra-4.0-rc2/conf/cassandra.yaml
sed -i 's/^dc=.*$/dc=DC-Houston/g' apache-cassandra-4.0-rc2/conf/cassandra-rackdc.properties
sed -i "s/^listen_address:.*$/listen_address: 127.0.0.1/g" apache-cassandra-4.0-rc2/conf/cassandra.yaml
sed -i 's/^rpc_address:.*$/rpc_address: 127.0.0.1/g' apache-cassandra-4.0-rc2/conf/cassandra.yaml
echo '127.0.0.1 node1' >> /etc/hosts   
#echo '[[HOST2_IP]] node2' >> /etc/hosts
sed -i 's/^          - seeds:.*$/          - seeds: "127.0.0.1"/g' apache-cassandra-4.0-rc2/conf/cassandra.yaml
mv apache-cassandra-4.0-rc2 /usr/share/cassandra
rm apache-cassandra-4.0-rc2-bin.tar.gz
echo 'PATH="$PATH:/usr/share/cassandra/bin:/usr/share/cassandra/tools/bin"' >> .bashrc
export PATH="$PATH:/usr/share/cassandra/bin:/usr/share/cassandra/tools/bin"
source .bashrc
/usr/share/cassandra/bin/cassandra -R
while [ `grep "Starting listening for CQL clients" /usr/share/cassandra/logs/system.log | wc -l` -lt 1 ]; do
   sleep 15
done
echo "done" >> /opt/katacoda-background-finished
