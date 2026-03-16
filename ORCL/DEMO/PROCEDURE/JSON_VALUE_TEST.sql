CREATE OR REPLACE NONEDITIONABLE PROCEDURE "DEMO"."JSON_VALUE_TEST" AS
-- PGV moved types start

-- PGV moved types end


            v_employee_id NUMBER;
            v_first_name VARCHAR2(50);
            v_last_name VARCHAR2(50);
            v_salary NUMBER;
            v_department_id NUMBER;
            v_address_street VARCHAR2(100);
            v_address_city VARCHAR2(100);
            v_address_state VARCHAR2(100);
            v_address_zip VARCHAR2(20);

BEGIN

    FOR rec IN (SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY, DEPARTMENT_ID, ADDRESS FROM employee) LOOP

           /* v_employee_id := JSON_VALUE(rec.EMPLOYEE_ID, '$.employee_id');
            v_first_name := JSON_VALUE(rec.FIRST_NAME, '$.first_name');
            v_last_name := JSON_VALUE(rec.LAST_NAME, '$.last_name');
            v_salary := TO_NUMBER(JSON_VALUE(rec.SALARY, '$.salary'));
            v_department_id := JSON_VALUE(rec.DEPARTMENT_ID, '$.department_id');  */
            v_address_street := JSON_VALUE(rec.address, '$.address.street');

DBMS_OUTPUT.PUT_LINE('Employee_id - V_address.street' || rec.employee_id || '-' || v_address_street );

            v_address_city := JSON_VALUE(rec.address, '$.address.city');
            v_address_state := JSON_VALUE(rec.address, '$.address.state');
            v_address_zip := JSON_VALUE(rec.address, '$.address.zip');
    /*    EXCEPTION
            WHEN OTHERS THEN
                DBMS_OUTPUT.PUT_LINE('Error processing JSON data');
                CONTINUE; -- Skip to next record
        END;  


         DBMS_OUTPUT.PUT_LINE('Data before inserting into employee'); 

        BEGIN
        INSERT INTO employee (employee_id, first_name, last_name, salary, department_id)--, address_street, address_city, address_state, address_zip)
        VALUES (v_employee_id, v_first_name, v_last_name, v_salary, v_department_id);--, v_address_street, v_address_city, v_address_state, v_address_zip); 

EXCEPTION
            WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Data After inserting into employee');
        END;


BEGIN
        UPDATE employee
        SET department_id = v_department_id + 10  -- Increment department ID by 10
        WHERE employee_id = v_employee_id;

EXCEPTION
            WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('After update into employee');
        END;     


IF v_salary > 50000 THEN 
BEGIN

      DELETE FROM employee WHERE employee_id = v_employee_id;

EXCEPTION
            WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('After Delete into employee');
        END;      


END IF; */
END LOOP;

EXCEPTION
            WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('After Delete into employee');

END;
/
