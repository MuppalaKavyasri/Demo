create or replace procedure demo."proc_numeric_dt_1"  () as $body$
declare
l_number smallint := null;
l_c_smallint test_proc_numeric_dt_1.c_smallint%type:= null;
l_c_bigint test_proc_numeric_dt_1.c_bigint%type:= null;
begin
l_number := 0;
for i in 1..100 loop
begin
if mod(i, 2) != 0 then
raise exception 'ex_continue' using errcode = '50001';
end if;
l_number := l_number + 1;
exception
when sqlstate '50001' then
null;
end;
end loop;
/* dmap converted statement start */
perform dbms_output.put_line( concat('EXCEPTION: ', l_number)) ;
/* dmap converted statement end */
l_number := 0;
for i in 1..100 loop
if mod(i, 2) != 0 then
l_number := l_number + 1;
end if;
end loop;
/* dmap converted statement start */
perform dbms_output.put_line( concat('IF       : ', l_number)) ;
/* dmap converted statement end */
l_number := 0;
for i in 1..100 loop
if mod(i, 2) = 0 then
/* dmap converted statement goto label label_continue start */

/*goto label_continue;*/

begin

    null;

end;

continue;
 
/* dmap converted statement goto label label_continue end */
end if;
l_number := l_number + 1;
<< label_continue >>
begin
 
null;
end;
end loop;
/* dmap converted statement start */
perform dbms_output.put_line( concat('GOTO     : ', l_number)) ;
/* dmap converted statement end */
end;
$body$
language plpgsql
;
