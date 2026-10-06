create or replace procedure yoda.pkg_sample7_sys_context_proc (asofdate numeric default null) as $body$
declare
-- pgv moved types start
-- pgv moved types end
osuser varchar(10);
uname varchar(10);
ipaddress varchar(10);
begin 

/* dmap converted statement start */
-- package does not have global variables
--dmap conversion comment: gtt declaration added
select current_setting('userenv.os_user', true),
session_user,
inet_client_addr() into strict osuser,uname,ipaddress;/* dmap converted statement end *//* dmap converted statement start */
perform dbms_output.put_line( concat('OS USER:', osuser)) ;/* dmap converted statement end *//* dmap converted statement start */
perform dbms_output.put_line( concat('SESSION USER:', uname)) ;/* dmap converted statement end *//* dmap converted statement start */
perform dbms_output.put_line( concat('USER ENV :', ipaddress)) ;/* dmap converted statement end */end;
$body$
language plpgsql
;
