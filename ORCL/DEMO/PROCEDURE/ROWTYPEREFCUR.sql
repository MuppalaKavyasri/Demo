CREATE OR REPLACE EDITIONABLE PROCEDURE "DEMO"."ROWTYPEREFCUR" (   r_cursor  SYS_REFCURSOR,
  c_employee in out sys_refcursor,
  er out employee%ROWTYPE) as
-- PGV moved types start

-- PGV moved types end


BEGIN

  OPEN c_employee FOR select * from employee;
  LOOP
      FETCH c_employee INTO er;
      exit when c_employee%NOTFOUND;
      dbms_output.put_line(er.ename || ' - ' );
  END LOOP;
  CLOSE c_employee;
END;
/
