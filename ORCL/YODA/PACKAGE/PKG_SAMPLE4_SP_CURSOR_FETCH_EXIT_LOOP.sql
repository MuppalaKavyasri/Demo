create or replace procedure yoda.pkg_sample4_sp_cursor_fetch_exit_loop () as $body$
declare
-- pgv moved types start
-- pgv moved types end
cur_test cursor for  select * from test_cur_found;
rec_test  test_cur_found%rowtype;
res numeric := 0;
begin 

-- package does not have global variables
--dmap conversion comment: gtt declaration added
open cur_test;
loop
fetch cur_test into rec_test;
res  := res +1;
select count(*) into strict res  from test_cur_found;
exit when not found; /* apply on cur_test */
end loop;/* dmap converted statement start */
perform dbms_output.put_line( concat('res = ', res)) ;/* dmap converted statement end */end;
$body$
language plpgsql
;
