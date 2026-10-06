create or replace procedure yoda."test_sysdate"  () as $body$
begin 

/* dmap converted statement start */
perform dbms_output.put_line( concat('Start : ', to_char(clock_timestamp(), 'YYYY-MM-DD HH24:MI:SS'))) ;/* dmap converted statement end *//* dmap converted statement start */
select pg_sleep (5);/* dmap converted statement end *//* dmap converted statement start */
perform dbms_output.put_line( concat('End : ', to_char(clock_timestamp(), 'YYYY-MM-DD HH24:MI:SS'))) ;/* dmap converted statement end *//* dmap converted statement start */
/*
-- test case:
set client_min_messages = 'debug';
exec yoda.test_sysdate;
*/
/* dmap converted statement end */end;
$body$
language plpgsql
;
