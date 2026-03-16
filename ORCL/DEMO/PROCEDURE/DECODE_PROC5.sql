CREATE OR REPLACE EDITIONABLE PROCEDURE "DEMO"."DECODE_PROC5" 
AS
-- PGV moved types start

-- PGV moved types end

   c_id demo.EMPLOYEE.empno%type ; 
   c_job demo.EMPLOYEE.job%type; 
   c_sal demo.EMPLOYEE.sal%type; 
BEGIN 
   SELECT  decode(JOB,'MANAGER',20,'CLERK', 10,'SALESMAN',30,'',40) job,
           sal 
   INTO  c_job, c_sal
   FROM demo.EMPLOYEE 
   WHERE deptno = c_id;  
   DBMS_OUTPUT.PUT_LINE ('Name: '||  c_job); 
   DBMS_OUTPUT.PUT_LINE ('Salary: ' || c_sal); 
EXCEPTION 
   WHEN no_data_found THEN 
      dbms_output.put_line('No such employee!'); 
   WHEN others THEN 
      dbms_output.put_line('Error!'); 
END; 
/
