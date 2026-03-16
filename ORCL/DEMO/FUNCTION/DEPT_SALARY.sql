CREATE OR REPLACE NONEDITIONABLE FUNCTION "DEMO"."DEPT_SALARY" () RETURN NUMBER IS
-- PGV moved types start

-- PGV moved types end

   CURSOR emp_cursor IS
      SELECT sal, comm FROM demo.emp WHERE deptno = dnum;
   total_wages    NUMBER(11, 2) := 0;
   counter        NUMBER(10) := 1;
BEGIN

   FOR emp_record IN emp_cursor LOOP
      emp_record.comm := NVL(emp_record.comm, 0);
      total_wages := total_wages + emp_record.sal
         + emp_record.comm;
      DBMS_OUTPUT.PUT_LINE('Loop number = ' || counter || 
         '; Wages = '|| TO_CHAR(total_wages));  /* Debug line */
      counter := counter + 1; /* Increment debug counter */
   END LOOP;
   /* Debug line */
   DBMS_OUTPUT.PUT_LINE('Total wages = ' ||
     TO_CHAR(total_wages)); 
   RETURN total_wages;

END dept_salary;
/
--Source_DDLS

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "DEMO"."DEPT_SALARY" () RETURN NUMBER IS
-- PGV moved types start

-- PGV moved types end

   CURSOR emp_cursor IS
      SELECT sal, comm FROM demo.emp WHERE deptno = dnum;
   total_wages    NUMBER(11, 2) := 0;
   counter        NUMBER(10) := 1;
BEGIN

   FOR emp_record IN emp_cursor LOOP
      emp_record.comm := NVL(emp_record.comm, 0);
      total_wages := total_wages + emp_record.sal
         + emp_record.comm;
      DBMS_OUTPUT.PUT_LINE('Loop number = ' || counter || 
         '; Wages = '|| TO_CHAR(total_wages));  /* Debug line */
      counter := counter + 1; /* Increment debug counter */
   END LOOP;
   /* Debug line */
   DBMS_OUTPUT.PUT_LINE('Total wages = ' ||
     TO_CHAR(total_wages)); 
   RETURN total_wages;

END dept_salary;
/
