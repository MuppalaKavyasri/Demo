CREATE OR REPLACE NONEDITIONABLE FUNCTION "DEMO"."BALANCE" (acct_id NUMBER) RETURN NUMBER IS
-- PGV moved types start

-- PGV moved types end

acct_bal NUMBER;
BEGIN
SELECT bal INTO acct_bal FROM accts
WHERE acct_no = acct_id;
RETURN acct_bal;
END;
/
--Source_DDLS

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "DEMO"."BALANCE" (acct_id NUMBER) RETURN NUMBER IS
-- PGV moved types start

-- PGV moved types end

acct_bal NUMBER;
BEGIN
SELECT bal INTO acct_bal FROM accts
WHERE acct_no = acct_id;
RETURN acct_bal;
END;
/
