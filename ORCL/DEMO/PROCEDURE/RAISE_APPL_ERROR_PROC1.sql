create or replace procedure demo."raise_appl_error_proc1"  ( p_empno numeric ) as $body$
declare
v_ename         emp.ename%type;
v_job           emp.job%type;
v_mgr           emp.mgr%type;
v_hiredate      emp.hiredate%type;
begin
select ename, job, mgr, hiredate
into strict v_ename, v_job, v_mgr, v_hiredate
from emp
where empno = p_empno;/* dmap converted statement start */
if nullif(v_ename::text, '') is null then
raise exception '%',  concat('No name for ', p_empno)  using errcode = '45010';/* dmap converted statement end */
end if;/* dmap converted statement start */
if nullif(v_job::text, '') is null then
raise exception '%',  concat('No job for', p_empno)  using errcode = '45020';/* dmap converted statement end */
end if;/* dmap converted statement start */
if nullif(v_mgr::text, '') is null then
raise exception '%',  concat('No manager for ', p_empno)  using errcode = '45030';/* dmap converted statement end */
end if;/* dmap converted statement start */
if nullif(v_hiredate::text, '') is null then
raise exception '%',  concat('No hire date for ', p_empno)  using errcode = '45040';/* dmap converted statement end */
end if;/* dmap converted statement start */
perform dbms_output.put_line( concat('Employee ', p_empno , ' validated without errors')) ;/* dmap converted statement end *//* dmap converted statement start */
exception
when others then
perform dbms_output.put_line( concat('SQLCODE: ', sqlstate)) ;/* dmap converted statement end *//* dmap converted statement start */
perform dbms_output.put_line( concat('SQLERRM: ', sqlerrm)) ;/* dmap converted statement end */end;
$body$
language plpgsql
;
