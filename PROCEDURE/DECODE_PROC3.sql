CREATE OR REPLACE EDITIONABLE PROCEDURE "DEMO"."DECODE_PROC3" 
AS
-- PGV moved types start

-- PGV moved types end

v_name varchar2(20);
v_empno varchar2(50);
BEGIN
SELECT ename,
DECODE(empno, 7839, 'KING',
                    10001, 'Microsoft',
                    10002, 'Hewlett Packard',
                    'Gateway') result
 into v_name,v_empno              
FROM demo.employee; 
dbms_output.put_line(v_name||v_empno);
END ;
/
