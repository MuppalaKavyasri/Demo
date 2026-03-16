CREATE OR REPLACE NONEDITIONABLE FUNCTION "DEMO"."ROW2" 
  RETURN NUMBER
AS
-- PGV moved types start

-- PGV moved types end

  --compree_num NUMBER;
  cnt         NUMBER;
  rr rowid;
  v_str  VARCHAR2(100);
  r_id   NUMBER;
  c_date DATE;
BEGIN

  SELECT rownum INTO r_id from all_bill_resources;

EXCEPTION
WHEN OTHERS THEN

  RETURN -1;
END ;
/
--Source_DDLS

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "DEMO"."ROW2" 
  RETURN NUMBER
AS
-- PGV moved types start

-- PGV moved types end

  --compree_num NUMBER;
  cnt         NUMBER;
  rr rowid;
  v_str  VARCHAR2(100);
  r_id   NUMBER;
  c_date DATE;
BEGIN

  SELECT rownum INTO r_id from all_bill_resources;

EXCEPTION
WHEN OTHERS THEN

  RETURN -1;
END ;
/
