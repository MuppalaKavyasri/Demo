CREATE OR REPLACE EDITIONABLE PROCEDURE "DEMO"."FIRROWHINT" (p1 out integer) AS
-- PGV moved types start

-- PGV moved types end
 
BEGIN
  select /*+ first_rows(100) */ count(*) into p1 from demo.emp;
 dbms_output.put_line(p1);
END ;

/
