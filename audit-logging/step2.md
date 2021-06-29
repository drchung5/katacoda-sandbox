In this step you will use *nodetool* to dynamically enable audit logging. 
Next you will insert and update some data. 
Finally you will view the audit log.

Use *nodetool* and enable audit logging.
```
nodetool enableauditlog;
```{{execute}}

Start the CQL Shell again.

```
cqlsh
```{{execute}}

Insert a row into the *songs* table.
```
use music;
INSERT INTO songs (artist, title, year) VALUES('Elton John', 'Daniel', 1974);
```{{execute}}

Wait a minute! Elton John released *Daniel* in 1973 on the album *Don't Shoot Me I'm Only The Piano Player*!
Update the row to reflect the correct year.

```
UPDATE songs SET year=1973 WHERE artist = 'Elton John' AND title = 'Daniel';
```{{execute}}

Make sure the update worked.
```
SELECT * FROM songs WHERE artist = 'Elton John' AND title = 'Daniel';
```{{execute}}

You should see *Daniel* with the correct year - 1973.
![Daniel](./assets/daniel.png)

Type `exit` to close *cqlsh*.
```
exit
```{{execute}}

The audit log is stored in binary format so you will use *auditlogviewer* to see it in *human-readable* form.
```
auditlogviewer /var/log/cassandra/audit
```{{execute}}
