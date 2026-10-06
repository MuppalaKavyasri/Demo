create or replace procedure yoda."test_rowid"  () as $body$
declare
v_rwid varchar(30);
begin 

/* dmap converted statement start */
select  md5(cast(ctid as text)) as rowid into  strict v_rwid from yoda.person limit 1;/* dmap converted statement end *//* dmap converted statement start */
perform dbms_output.put_line( concat('Row Id in test_tbl_1 = ', v_rwid)) ;/* dmap converted statement end *//* dmap converted statement start */
/*
-- test case:
set client_min_messages = 'debug';
exec yoda.test_rowid
*/
/* dmap converted statement end */end;
$body$
language plpgsql
SECURITY DEFINER
;
