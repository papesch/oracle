## oracle sql snippets
Oracle scripts and queries used in the life of a software tester

### tabdtl.sql
`tabdtl.sql` reports all the metadata associated with a table in Oracle. It is called from an Oracle sql*plus session. The parameters are:

`@tabdtl.sql <db_owner> <table_name>`

Example: 

`@tabdtl.sql airp system_instance_parameter`

I have commented out the initial PROMPT inputs so that `tabdtl.sql` can be called from a shell command, with parameters $1 and $2 passed in. 
See also [dba_table_info.sql](http://www.idevelopment.info/data/Oracle/DBA_scripts/Database_Administration/dba_table_info.sql) or [tableinfo.sql](https://github.com/geekcomputers/Oracle-SQL/blob/master/tableinfo.sql), one of whom is probably the original author. 
