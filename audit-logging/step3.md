In this step you will enable audit logging in `cassandra.yaml`.

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

Verify that cassandra has stopped
```
nodetool status
```{{execute}}