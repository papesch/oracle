set linesize 140 pagesize 50 trims on numwidth 20;
set recsep off wrap on ;
define _editor=vi;
--formatting for sendsms table--
column text format A50 word_wrapped;
column id format A6;
column state format 99999;
column sendsms_t format 999999999;
--formatting for configuration table--
column configuration_t format 999999999;
column name format A30 wrapped;
column key format A30 wrapped;
column value format A60 wrapped;

--formatting for sqlplus prompt--
column whereami new_value _DB_NAME NOPRINT;
column whoami new_value _NAME NOPRINT;
select sys_context('userenv', 'db_name') whereami from dual;
select lower(USER) whoami from dual;
set sqlprompt '&&_DB_NAME..&&_NAME> '
--set sqlprompt '&_USER.@&_CONNECT_IDENTIFIER.> '
--set sqlprompt '&&_NAME..&&_DB_NAME> '
