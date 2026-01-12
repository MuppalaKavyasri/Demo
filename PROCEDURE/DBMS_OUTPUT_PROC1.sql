CREATE OR REPLACE EDITIONABLE PROCEDURE "DEMO"."DBMS_OUTPUT_PROC1" 
AS
-- PGV moved types start

-- PGV moved types end

BEGIN
dbms_output.put_line( 'One' );
dbms_output.put_line( 'Two' );
dbms_output.enable;
dbms_output.put_line( 'Three' );
END;
/
