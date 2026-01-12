CREATE OR REPLACE EDITIONABLE PROCEDURE "DEMO"."DECODE_PROC4" (id number)
AS
-- PGV moved types start

-- PGV moved types end

v_name varchar2(20);
v_empno varchar2(50);
v_deptno number;
v_dname varchar2(50);
BEGIN
SELECT e.ename,
DECODE(e.empno, 7839, 'KING',
                    10001, 'Microsoft',
                    10002, 'Hewlett Packard',
                    'Gateway') result,
Decode( d.deptno, 10, 'NEW YORK' ,  
                20, 'DALLAS',
                30, 'CHICAGO',
                40, 'BOSTON'),
      d.dname          
 into v_name,v_empno,v_deptno,v_dname      
FROM demo.employee e, 
     demo.dept d
WHERE 1=1
and e.deptno = d.deptno
and e.deptno = id;
dbms_output.put_line(v_name||v_empno||v_deptno||v_dname);
Exception
        when others then
        null;
END ;
/
