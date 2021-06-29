Setup

In this step you will verify that Cassandra has been installed and is running as a service.
Next, you will connect using *cqlsh* and create a keyspace and table.

During startup, this scenario uses *apt-get* to install and start a single Cassandra node running as a service.
This process may take a few minutes. Wait until you see *Cassandra has started!* before you continue.

Once Cassandra has started, verify the cluster status with *nodetool*.
```
nodetool status
```{{execute}}