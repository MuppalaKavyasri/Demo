CREATE OR REPLACE EDITIONABLE PROCEDURE "YODA"."INS_UPD_SPORT_TYPE" (p_name varchar2, p_desc varchar2)
as
-- PGV moved types start

-- PGV moved types end

begin

	MERGE INTO yoda.sport_type s1
	USING (SELECT p_name name from dual) s2
	   ON (s1.name = s2.name)
	WHEN MATCHED THEN
		UPDATE SET description= p_desc
	WHEN NOT MATCHED THEN
		INSERT (s1.name, s1.description)
		VALUES (p_name, p_desc);

    /*
    -- Test Cases:

    select * from yoda.sport_type;
    exec yoda.ins_upd_sport_type('cricket', 'Twenty20 cricket league');
    select * from yoda.sport_type;


    exec yoda.ins_upd_sport_type('cricket', 'The Indian Premier League is a professional men''s Twenty20 cricket league');
    select * from yoda.sport_type;

    rollback;

    */
end;
/
