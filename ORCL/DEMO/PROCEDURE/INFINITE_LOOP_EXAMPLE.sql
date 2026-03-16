CREATE OR REPLACE NONEDITIONABLE PROCEDURE "DEMO"."INFINITE_LOOP_EXAMPLE" AS
-- PGV moved types start

-- PGV moved types end

    counter INT := 0;
BEGIN
BEGIN
    dbms_output.put_line('Hi: ');
    dbms_output.put_line('hello: ');
    GOTO my_label;
    dbms_output.put_line('Hi: ');

    <<my_label>> 
    NULL;
    counter := counter + 1;
    dbms_output.put_line('Counter: ' || counter);

        -- Exit the loop if counter exceeds 10
    IF counter >= 10 THEN
        GOTO end_of_program;
    END IF;

        -- Jump back to the beginning of the loop
    GOTO my_label;

END;
dbms_output.put_line('END OF BEGIN');
<<end_of_program>>
    NULL;   
END;
/
