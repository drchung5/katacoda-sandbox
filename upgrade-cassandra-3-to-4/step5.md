```
wget https://archive.apache.org/dist/cassandra/4.0.0/apache-cassandra-4.0.0-bin.tar.gz
```{{execute T1}}

```
tar xzf apache-cassandra-4.0.0-bin.tar.gz
```{{execute T1}}

```
mv apache-cassandra-4.0.0 /usr/share/cassandra4
```{{execute T1}}

```
rm apache-cassandra-4.0.0-bin.tar.gz
```{{execute T1}}

```
export PATH="/usr/bin:/usr/share/cassandra4/bin:/usr/share/cassandra4/tools/bin:$PATH"
```{{execute T1}}

```
sed -i 's/num_tokens: 16/num_tokens: 256/' /usr/share/cassandra4/conf/cassandra.yaml
```{{execute T1}}

```
sed -i 's/# data_file_directories:/data_file_directories:/' /usr/share/cassandra4/conf/cassandra.yaml
sed -i 's/#     - \/var\/lib\/cassandra\/data/    - \/usr\/share\/cassandra\/data\/data/' /usr/share/cassandra4/conf/cassandra.yaml
```{{execute T1}}

```
cassandra -R
```{{execute T1}}

```
while [ `grep "Starting listening for CQL clients" /usr/share/cassandra/logs/system.log | wc -l` -lt 1 ]; do sleep 10; done

echo "Cassandra setup complete"
```{{execute T1}}

/usr/share/cassandra/data/data
num_tokens: 256