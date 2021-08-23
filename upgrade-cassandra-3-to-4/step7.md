```
nodetool version
```{{execute T1}}

```
cqlsh
```{{execute T1}}

Use the keyspace.
```
USE united_states;
```{{execute T1}}

Verify that the data has been loaded.
```
SELECT * FROM cities_by_state;
```{{execute T1}}