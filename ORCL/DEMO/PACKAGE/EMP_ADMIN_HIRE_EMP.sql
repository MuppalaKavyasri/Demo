create or replace procedure demo.emp_admin_hire_emp ( p_empno numeric, p_ename varchar, p_job varchar, p_sal numeric, p_hiredate timestamp(0), p_comm numeric, p_mgr numeric, p_deptno numeric ) as $body$
declare
-- pgv moved types start
-- pgv moved types end
begin
-- package does not have global variables
--dmap conversion comment: gtt declaration added
insert into emp(empno, ename, job, sal, hiredate, comm, mgr, deptno)
values (p_empno, p_ename, p_job, p_sal,
p_hiredate, p_comm, p_mgr, p_deptno);end;
--
--  procedure that deletes an employee record from the emp table based
--  on the employee number.
--
$body$
language plpgsql
;
