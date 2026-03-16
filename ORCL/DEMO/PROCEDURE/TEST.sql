create or replace procedure demo."test"  () as $body$
begin
insert into testw(id) values (1);
update testw set id = 1;/* dmap converted statement start */
exception    when others then
-- optionally, log the error
perform dbms_output.put_line( concat('An error occurred: ', sqlerrm)) ;/* dmap converted statement end */
rollback;end;
$body$
language plpgsql
;
