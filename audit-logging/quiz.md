Here is a short quiz for you. 

>>1. What is valid statement about audit log configuration in Cassandra? <<
( ) Audit log configuration set with <i>nodetool</i> persists across server restarts.
( ) Audit log configuration set with nodetool applies to all nodes in a cassandra cluster.
(*) Audit log configuration set with nodetool overrides configuration set in cassandra.yaml.


>>2. How should you handle sensitive data when sharing audit logs? <<
( ) Audit logs do not contain sesitive data.
(*) Manually redact sensitive data in the audit logs.
( ) Use nodetool to redact specific fieds in the audit logs.


>>3. Which command disables the audit log for the finance keyspace? <<
( ) nodetool auditlog --ignore finance
( ) nodetool auditlog --disable --keyspace finance
(*) nodetool enableauditlog --excluded-keyspaces finance
