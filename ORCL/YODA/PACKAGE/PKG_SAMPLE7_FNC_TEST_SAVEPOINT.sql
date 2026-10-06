create or replace  function  yoda.pkg_sample7_fnc_test_savepoint (i_flag boolean) returns numeric as $body$
declare
-- pgv moved types start
-- pgv moved types end
v_cnt  integer;
begin 

-- package does not have global variables
--dmap conversion comment: gtt declaration added
select count(1) into strict v_cnt from test_savepoint;/* dmap converted statement start */
perform dbms_output.put_line( concat('1 - v_cnt:', v_cnt)) ;/* dmap converted statement end */
insert into test_savepoint values (1, 'Test-1');
insert into test_savepoint values (2, 'Test-2');
insert into test_savepoint values (3, 'Test-3');
select count(1) into strict v_cnt from test_savepoint;/* dmap converted statement start */
perform dbms_output.put_line( concat('2 - v_cnt:', v_cnt)) ;/* dmap converted statement end */
savepoint my_svp;
insert into test_savepoint values (10, 'Test-10');
insert into test_savepoint values (20, 'Test-20');
select count(1) into strict v_cnt from test_savepoint;/* dmap converted statement start */
perform dbms_output.put_line( concat('3 - v_cnt:', v_cnt)) ;/* dmap converted statement end *//* dmap converted statement start */
--if true then rolls back till savepoint declaration
if i_flag then
rollback to savepoint my_svp;/* dmap converted statement end */
return 1;
end if;
insert into test_savepoint values (100, 'Test-100');
insert into test_savepoint values (200, 'Test-200');
select count(1) into strict v_cnt from test_savepoint;/* dmap converted statement start */
perform dbms_output.put_line( concat('4 - v_cnt:', v_cnt)) ;/* dmap converted statement end */
return 0;end;
$body$
language plpgsql
;
