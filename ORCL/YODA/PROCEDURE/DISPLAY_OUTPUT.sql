create or replace procedure yoda."display_output"  (p_name varchar) as $body$
begin 

/* dmap converted statement start */
perform dbms_output.put_line( concat('Name : ', p_name)) ;/* dmap converted statement end *//* dmap converted statement start */
/*
-- test case:
set client_min_messages = 'debug';
exec dms_sample.display_output('first_name');
*/
/* dmap converted statement end */end;
$body$
language plpgsql
SECURITY DEFINER
;
