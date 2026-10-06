CREATE OR REPLACE EDITIONABLE PROCEDURE "YODA"."TEST_DB_LINK" 
as
-- PGV moved types end

DECLARE
-- PGV moved types start

    v_schema_name varchar2(30);
begin

    select schema_name into v_schema_name from dms_user.test_db_link@srcdb;

    DBMS_OUTPUT.PUT_LINE('Schema name in test_tbl_1 = '||v_schema_name);

END;
/
