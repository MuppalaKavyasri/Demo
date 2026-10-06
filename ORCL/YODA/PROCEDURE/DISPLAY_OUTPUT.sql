CREATE OR REPLACE EDITIONABLE PROCEDURE "YODA"."DISPLAY_OUTPUT" (p_name varchar2)
as
-- PGV moved types start

-- PGV moved types end

begin

	DBMS_OUTPUT.PUT_LINE('Name : ' || p_name);

	/*
	-- Test Case:

	set serveroutput on;
	exec dms_sample.display_output('first_name');

	*/

END;
/
