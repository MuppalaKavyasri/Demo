CREATE OR REPLACE EDITIONABLE PROCEDURE "DEMO"."EXCEOTION_PROC1" 
AS
-- PGV moved types start

-- PGV moved types end

   c_id demo.EMPLOYEE.empno%type ; 
   c_name demo.EMPLOYEE.ename%type; 
   c_sal demo.EMPLOYEE.sal%type; 
BEGIN 
   SELECT  ename, sal INTO  c_name, c_sal
   FROM demo.EMPLOYEE 
   WHERE deptno = c_id;  
   DBMS_OUTPUT.PUT_LINE ('Name: '||  c_name); 
   DBMS_OUTPUT.PUT_LINE ('Address: ' || c_sal); 
EXCEPTION 
   WHEN no_data_found THEN 
      dbms_output.put_line('No such employee!'); 
   WHEN others THEN 
      dbms_output.put_line('Error!'); 
END; 
/
