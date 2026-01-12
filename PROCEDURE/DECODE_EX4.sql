CREATE OR REPLACE EDITIONABLE PROCEDURE "DEMO"."DECODE_EX4" (p1 out VARCHAR2) AS
-- PGV moved types start

-- PGV moved types end

BEGIN
select DECODE (1, 'Southlake', 
                             2, 'San Francisco', 
                             3, 'New Jersey', 
                             4, 'Seattle',
                                'Non domestic') 
       AS Location_of_inventory into p1 from dual;
dbms_output.put_line(p1);
END ;
/
