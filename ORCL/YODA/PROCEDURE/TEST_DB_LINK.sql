create or replace procedure yoda."test_db_link"  () as $body$
declare
v_schema_name varchar(30);
begin 

select schema_name into strict v_schema_name from dms_user.test_db_link__srcdb;/* dmap converted statement start */
perform dbms_output.put_line( concat('Schema name in test_tbl_1 = ', v_schema_name)) ;/* dmap converted statement end */end;
$body$
language plpgsql
;
