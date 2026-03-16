CREATE OR REPLACE NONEDITIONABLE PROCEDURE "DEMO"."PROC_NUMERIC_DT_1" AS
-- PGV moved types start

-- PGV moved types end

    ex_continue EXCEPTION;
    l_number SMALLINT := '';
    l_c_smallint test_proc_numeric_dt_1.c_smallint%type := '';
    l_c_bigint test_proc_numeric_dt_1.c_bigint%type := '';
BEGIN
    l_number := 0;
    FOR i IN 1..100 LOOP
        BEGIN
            IF MOD(i, 2) != 0 THEN
                RAISE ex_continue;
            END IF;
            l_number := l_number + 1;
        EXCEPTION
            WHEN ex_continue THEN
                NULL;
        END;
    END LOOP;

    dbms_output.put_line('EXCEPTION: ' || l_number);
    l_number := 0;
    FOR i IN 1..100 LOOP
        IF MOD(i, 2) != 0 THEN
            l_number := l_number + 1;
        END IF;
    END LOOP;

    dbms_output.put_line('IF       : ' || l_number);
    l_number := 0;
    FOR i IN 1..100 LOOP
        IF MOD(i, 2) = 0 THEN
            GOTO label_continue;
        END IF;
        l_number := l_number + 1;
        << label_continue >> NULL;
    END LOOP;

    dbms_output.put_line('GOTO     : ' || l_number);
END;
/
