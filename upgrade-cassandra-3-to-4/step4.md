In this step, we will prepare the Cassandra 3.x cluster for the upgrade.

```
nodetool cleanup
```{{execute T1}}

```
nodetool snapshot
```{{execute T1}}

```
ps auwx | grep cassandra
```{{execute T1}}

```
kill [[pid]]
```{{execute T1}}

