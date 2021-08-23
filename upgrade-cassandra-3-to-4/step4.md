In this step, we will prepare the Cassandra 3.x cluster for the upgrade.

```
nodetool snapshot
```{{execute T1}}

```
ps auwx | grep cassandra
```{{execute T1}}

```
kill [[pid]]
```{{execute T1}}

```
clear
```{{execute T1}}