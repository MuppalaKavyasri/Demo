create or replace procedure demo."rowtyperefcur"  ( r_cursor refcursor, c_employee inout refcursor, er inout employee) as $body$
begin
open c_employee for select * from employee;
loop
fetch c_employee into er;
exit when not found; /* dmap converted statement start *//* apply on c_employee */
perform dbms_output.put_line( concat(er.ename, ' - ')  );/* dmap converted statement end */
end loop;
close c_employee;end;
$body$
language plpgsql
;
