#!/bin/bash
#set -x
[ $1 ] || { echo "$0 <x_claim_id>
Extracts 1 record from x_claim table into retro handback file format" ; exit ; }
mpa_claim_id=$1
 
sqlplus -s /@some_oracle_host  <<EOF >/dev/null
set colsep ";"
set linesize 200
set trimspool off
set heading off
set pagesize 0
set wrap off
set feedback off
set newpage 0
set arraysize 5000
spool retrohb_test.$mpa_claim_id

select 
 'RI'
 || rpad(member_number,16,' ')
 || rpad(member_last_name,20,' ')
 || rpad(member_first_name,25,' ')
 || rpad(ticketed_last_name,20,' ')
 || rpad(ticketed_first_name,25,' ')
 || to_char(flight_date,'YYYYMMDD')
 || rpad(mkt_airline_code,4,' ')
 || lpad(mkt_flight_no,4,'0')
 || rpad(from_airport,4,' ')
 || rpad(to_airport,4,' ')
 || rpad(crediting_class,2,' ')
 || rpad(nvl(class_flown,' '),2,' ')
 || rpad(ticket_no,16,' ')
 || rpad(ticket_ind,1,' ')
 || rpad(bp_ind,16,' ')
 || 'R'
 || lpad(nvl(boarding_no,'0'),4,'0')
 || rpad(nvl(seat_no,' '),4,' ')
 || rpad(x_claim_id,22,' ')
from x_claim
where x_claim_id=$mpa_claim_id
;
spool off
EOF
