create or replace  function  demo.emp_admin_get_dept_name ( p_deptno numeric ) returns varchar as $body$
declare
-- pgv moved types start
-- pgv moved types end
v_dname         varchar(14);
begin
-- package does not have global variables
--dmap conversion comment: gtt declaration added
select dname into strict v_dname from dept where deptno = p_deptno;
return v_dname;/* dmap converted statement start */
exception
when no_data_found then
perform dbms_output.put_line( concat('Invalid department number ', p_deptno)) ;/* dmap converted statement end */
return '';end;
--
--  function that updates an employees salary based on the
--  employee number and salary increment/decrement passed
--  as in parameters.  upon successful completion the function
--  returns the new updated salary.
--
$body$
language plpgsql
;
