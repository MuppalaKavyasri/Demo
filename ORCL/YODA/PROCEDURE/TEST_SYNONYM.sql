create or replace procedure yoda."test_synonym"  () as $body$
declare
v_schema_name varchar(30);
begin 

select schema_name into strict v_schema_name from test_tbl_1;/* dmap converted statement start */
perform dbms_output.put_line( concat('Schema name in test_tbl_1 = ', v_schema_name)) ;/* dmap converted statement end *//* dmap converted statement start */
/*
-- test case:
set client_min_messages = 'debug';
exec yoda.test_synonym
*/
/* dmap converted statement end */end;
$body$
language plpgsql
;
