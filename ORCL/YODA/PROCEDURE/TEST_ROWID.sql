CREATE OR REPLACE EDITIONABLE PROCEDURE "YODA"."TEST_ROWID" 
as
-- PGV moved types start

-- PGV moved types end

    v_rwid varchar2(30);
begin

    select rowid into v_rwid from yoda.person where rownum<2;

    DBMS_OUTPUT.PUT_LINE('Row Id in test_tbl_1 = '||v_rwid);

	/* 
	-- Test Case:

	set serveroutput on;
	exec yoda.test_rowid

	*/

END;
/
