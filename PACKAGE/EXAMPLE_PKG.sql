CREATE OR REPLACE NONEDITIONABLE PACKAGE "DEMO"."EXAMPLE_PKG" AS
    PROCEDURE valid_procedure1;
    PROCEDURE valid_procedure2;

END example_pkg;
/
CREATE OR REPLACE NONEDITIONABLE PACKAGE BODY "DEMO"."EXAMPLE_PKG" AS

    PROCEDURE valid_procedure1 IS
    BEGIN
        DBMS_OUTPUT.PUT_LINE('Executing valid_procedure1');
    END valid_procedure1;

    PROCEDURE valid_procedure2 IS
    BEGIN
        DBMS_OUTPUT.PUT_LINE('Executing valid_procedure2');
    END valid_procedure2;

    -- Intentionally leaving this procedure with an invalid implementation


END example_pkg;
/;
