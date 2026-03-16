CREATE OR REPLACE NONEDITIONABLE FUNCTION "DEMO"."GET_FULL_NAME" (p_employee_id NUMBER) RETURN VARCHAR2 AS
-- PGV moved types start

-- PGV moved types end

    v_full_name VARCHAR2(100);
BEGIN
    SELECT first_name || ' ' || last_name INTO v_full_name
    FROM employees
    WHERE employee_id = p_employee_id;
    RETURN v_full_name;
END get_full_name;
/
--Source_DDLS

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "DEMO"."GET_FULL_NAME" (p_employee_id NUMBER) RETURN VARCHAR2 AS
-- PGV moved types start

-- PGV moved types end

    v_full_name VARCHAR2(100);
BEGIN
    SELECT first_name || ' ' || last_name INTO v_full_name
    FROM employees
    WHERE employee_id = p_employee_id;
    RETURN v_full_name;
END get_full_name;
/
