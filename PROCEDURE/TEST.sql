CREATE OR REPLACE EDITIONABLE PROCEDURE "DEMO"."TEST" 
is
-- PGV moved types start

-- PGV moved types end

begin
    Insert into testw(id) values (1);
    Update testw set id = 1;
exception    WHEN OTHERS THEN
        -- Optionally, log the error
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
    Rollback;
end;
/
