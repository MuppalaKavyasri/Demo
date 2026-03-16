CREATE OR REPLACE NONEDITIONABLE FUNCTION "DEMO"."ROW1" 
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

  SELECT rowid INTO rr FROM all_bill_resources;

EXCEPTION
WHEN OTHERS THEN

  RETURN -1;
END ;
/
--Source_DDLS

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "DEMO"."ROW1" 
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

  SELECT rowid INTO rr FROM all_bill_resources;

EXCEPTION
WHEN OTHERS THEN

  RETURN -1;
END ;
/
