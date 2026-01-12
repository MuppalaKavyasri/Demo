CREATE OR REPLACE NONEDITIONABLE PROCEDURE "DEMO"."PROCESS_JSON_DATA" IS
-- PGV moved types end

BEGIN
    -- Loop through each row in the source table
    FOR rec IN (SELECT employee_id, address FROM employee) LOOP
        -- Extract values from JSON data using JSON_VALUE
        DECLARE
-- PGV moved types start

            first_name VARCHAR2(100);
            last_name VARCHAR2(100);
            email VARCHAR2(100);
        BEGIN
            first_name := JSON_VALUE(rec.address, '$.first_name');
            last_name := JSON_VALUE(rec.address, '$.last_name');
            email := JSON_VALUE(rec.address, '$.email');

            -- Insert the extracted values into the target table
            INSERT INTO employee (employee_id, first_name, last_name, email)
            VALUES (employee_id, first_name, last_name, email);
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                -- Handle exception if JSON data doesn't contain the expected fields
                DBMS_OUTPUT.PUT_LINE('Data missing in JSON for ID: ' || rec.id);
            WHEN OTHERS THEN
                -- Handle other exceptions
                DBMS_OUTPUT.PUT_LINE('Error processing ID: ' || rec.id || '. Error: ' || SQLERRM);
        END;
    END LOOP;
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        -- Handle exceptions at procedure level
        DBMS_OUTPUT.PUT_LINE('Error in process_json_data procedure: ' || SQLERRM);
        ROLLBACK;
END;
/
