create or replace procedure demo."sessiontime"  (p1 inout varchar) as $body$
begin
/* dmap converted statement start */
select to_char(current_timestamp at time zone current_setting('TIMEZONE'),'YYYY-MM-DD') into strict p1;/* dmap converted statement end */
perform dbms_output.put_line(p1);end;
$body$
language plpgsql
;
