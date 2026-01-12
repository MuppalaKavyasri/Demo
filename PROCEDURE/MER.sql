CREATE OR REPLACE EDITIONABLE PROCEDURE "DEMO"."MER" AS
-- PGV moved types start

-- PGV moved types end
 
BEGIN
  MERGE INTO demo.member_staging x
USING (SELECT member_id, first_name, last_name, rank FROM demo.members) y
ON (x.member_id  = y.member_id)
WHEN MATCHED THEN
    UPDATE SET x.first_name = y.first_name, 
                        x.last_name = y.last_name, 
                        x.rank = y.rank

WHEN NOT MATCHED THEN
    INSERT (x.member_id, x.first_name, x.last_name, x.rank)  
    VALUES (y.member_id, y.first_name, y.last_name, y.rank);
END ;

/
