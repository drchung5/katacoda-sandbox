wget https://archive.apache.org/dist/cassandra/4.0.0/apache-cassandra-4.0.0-bin.tar.gz < "/dev/null" > /dev/null 2>&1

tar xzf apache-cassandra-4.0.0-bin.tar.gz
mv apache-cassandra-4.0.0 /usr/share/cassandra4
rm apache-cassandra-4.0.0-bin.tar.gz
export JAVA_HOME="/usr"
export PATH="/usr/bin:/usr/share/cassandra4/bin:/usr/share/cassandra4/tools/bin:$PATH"

echo "Start Cassandra"

cassandra -R < "/dev/null" > /dev/null 2>&1

while [ `grep "Starting listening for CQL clients" /usr/share/cassandra/logs/system.log | wc -l` -lt 1 ]; do sleep 10; done

echo "Cassandra setup complete"