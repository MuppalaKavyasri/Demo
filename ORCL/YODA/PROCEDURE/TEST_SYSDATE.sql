CREATE OR REPLACE EDITIONABLE PROCEDURE "YODA"."TEST_SYSDATE" 
as
-- PGV moved types start

-- PGV moved types end

begin

	DBMS_OUTPUT.PUT_LINE('Start : ' || to_char(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'));
	dbms_lock.sleep(5);
	DBMS_OUTPUT.PUT_LINE('End : ' || to_char(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'));

	/*
	-- Test Case:
	set serveroutput on;
	exec yoda.test_sysdate;
	*/

END;
/
