In this step you will look at some of the configurable properties of audit logging. 

---
<p>
<span style="color:teal">**Note:**</span> 
All of these properties may be configured in `cassandra.yaml` or with *nodetool*. Properties configured in `cassandra.yaml` persist across server shutdownws. Properties configured with *nodetool* override preoperties configured in `cassandra.yaml.
</p>
---

# Configurable Properties

- `enabled`: This option enables/ disables audit log
- `logger`: Class name of the logger/ custom logger.
- `audit_logs_dir`: Auditlogs directory location, if not set, default to cassandra.logdir.audit or cassandra.logdir + /audit/
- `included_keyspaces`: Comma separated list of keyspaces to be included in audit log, default - includes all keyspaces
- `excluded_keyspaces`: Comma separated list of keyspaces to be excluded from audit log, default - excludes no keyspace except system, system_schema and system_virtual_schema
- `included_categories`: Comma separated list of Audit Log Categories to be included in audit log, default - includes all categories
- `excluded_categories`: Comma separated list of Audit Log Categories to be excluded from audit log, default - excludes no category
- `included_users`: Comma separated list of users to be included in audit log, default - includes all users
- `excluded_users`: Comma separated list of users to be excluded from audit log, default - excludes no user