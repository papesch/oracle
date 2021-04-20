load data
 infile *
 discardfile mpa_partner_retro_claim.dis
 append into table mpa_partner_retro_claim
 fields terminated by ","
 trailing nullcols
 ( mpa_partner_retro_claim_id "mpa_partner_retro_claim_s.nextval"
   , sending_airline_code, receiving_airline_code
   , direction, file_name, member_type, member_number, member_last_name
   , member_first_name, ticketed_last_name, ticketed_first_name
   , flight_date "to_date(:flight_date, 'YYYY-MM-DD')"
   , mkt_airline_code, mkt_flight_no, op_airline_code, op_flight_no
   , from_airport, to_airport, crediting_class, class_flown, ticket_no
   , ticket_ind, bp_ind, boarding_no, seat_no, external_ref_no, error_code
   , transaction_status, hb_file_name, accepted_date
   , date_sent "to_date(:date_sent, 'YYYY-MM-DD')"
   , date_created "to_date(:date_created, 'YYYY-MM-DD HH24:MI:SS')"
   , who_created
   , date_modified "to_date(:date_modified, 'YYYY-MM-DD HH24:MI:SS')"
   , who_modified, name_verified
   , customer_booking_type, accrual_percentage )

begindata
,NZ,CX,O,nzcx_retro.20180205,NZ,24955555,Redacted,Something,Redacted,Something,2017-12-15,CX,0123,CX,0123,HKG,CHC,S,Y,1601322968204,X,X,,,,,STP,,,2018-02-05,2018-02-01 15:10:43,SPRWEB,2018-02-05 23:00:02,SPRWEB,N,,
