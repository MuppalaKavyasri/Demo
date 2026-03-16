create or replace procedure demo."main_pgm_pragma_sample"  () as $body$
declare
l_number    numeric := 0;
new_number numeric := 10;
begin
perform dbms_output.put_line('First Record');/* dmap converted statement start */
insert into test_prag(message) values ( concat('Record MAIN2.1 from CHILD', new_number)) ;/* dmap converted statement end */
new_number := new_number + 1;
call child_pgm_pragma_sample ();/* dmap converted statement start */
insert into test_prag(message) values ( concat('Record MAIN2.3 from CHILD', new_number)) ;/* dmap converted statement end */
rollback;end;
$body$
language plpgsql
;
