In this step, we will prepare the Cassandra 3.x cluster for the upgrade.

```
nodetool snapshot
```{{execute T1}}

```
pgrep -u root -f cassandra | xargs kill -9
```{{execute T1}}

```
clear
```{{execute T1}}