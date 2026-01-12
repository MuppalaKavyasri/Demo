CREATE OR REPLACE EDITIONABLE PROCEDURE "DEMO"."VARC" (op    out  varchar2
                     ) AS
-- PGV moved types start

-- PGV moved types end
 

BEGIN 
  select cast('This is a sample data' as varchar2(40)) into op from dual;
END ;

/
