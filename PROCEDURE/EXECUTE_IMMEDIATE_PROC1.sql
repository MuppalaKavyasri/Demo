CREATE OR REPLACE EDITIONABLE PROCEDURE "DEMO"."EXECUTE_IMMEDIATE_PROC1" 
AS
-- PGV moved types start

-- PGV moved types end

BEGIN
EXECUTE IMMEDIATE 'create table abcd (id NUMBER)';
EXECUTE IMMEDIATE 'drop table abcd';
EXECUTE IMMEDIATE 'create table abcd (id VARCHAR2(10))';
END;
/
