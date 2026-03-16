CREATE OR REPLACE EDITIONABLE PROCEDURE "DEMO"."EXECUTE_IMMEDIATE_PROC3" 
AS
-- PGV moved types start

-- PGV moved types end

  TYPE EmpCurTyp  IS REF CURSOR;
  v_emp_cursor    EmpCurTyp;
  emp_record      employee%ROWTYPE;
  v_stmt_str      VARCHAR2(200);
  v_e_job         employee.job%TYPE;
BEGIN
  -- Dynamic SQL statement with placeholder:
  v_stmt_str := 'SELECT * FROM employee WHERE job = :j';
  -- Open cursor & specify bind argument in USING clause:
  OPEN v_emp_cursor FOR v_stmt_str USING 'MANAGER';
  -- Fetch rows from result set one at a time:
  LOOP
    FETCH v_emp_cursor INTO emp_record;
    EXIT WHEN v_emp_cursor%NOTFOUND;
  END LOOP;
  -- Close cursor:
  CLOSE v_emp_cursor;
END;
/
