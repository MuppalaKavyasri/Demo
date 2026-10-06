CREATE OR REPLACE EDITIONABLE PROCEDURE "YODA"."TEST_SYNONYM" 
as
-- PGV moved types start

-- PGV moved types end

    v_schema_name varchar2(30);
begin

    select schema_name into v_schema_name from test_tbl_1;

    DBMS_OUTPUT.PUT_LINE('Schema name in test_tbl_1 = '||v_schema_name);

	/* 
	-- Test Case:

	set serveroutput on;
	exec yoda.test_synonym

	*/

END;
/
