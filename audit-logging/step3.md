In this step you will stop the Cassandra service, enable audit logging in `cassandra.yaml`,re-start the Cassandra service, insert some data and view the inserts in the *audit log*.

---
<p>
<span style="color:teal">**Note:**</span> 
Settings in `cassandra.yaml` only take effect after a node start or re-start.
</p>
---

Stop the Cassandra service
```
service cassandra stop
```{{execute}}

Verify that Cassandra has stopped
```
nodetool status
```{{execute}}

You should see a message like this:
![Stopped](./assets/stopped.png)

Click to open the `/etc/cassandra/cassandra.yaml`{{open}} file in the editor.

<pre class="file" data-filename="/etc/cassandra/cassandra.yaml">audit_logging_options:</pre>
<pre class="file" data-filename="/etc/cassandra/cassandra.yaml">    enabled: true</pre>

cqlsh
```{{execute}}

Re-start the Cassandra service
```
service cassandra stop
```{{execute}}

Verify that Cassandra has started
```
nodetool status
```{{execute}}

Insert another song into the *songs* table.
```
use music;
INSERT INTO songs (artist, title, year) VALUES('Paul Simon', 'Kodachrome', 1973);
```{{execute}}

Type `exit` to close *cqlsh*.
```
exit
```{{execute}}

```
auditlogviewer /var/log/cassandra/audit
```{{execute}}