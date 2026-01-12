CREATE OR REPLACE EDITIONABLE PROCEDURE "DEMO"."DEPARTMENTS" (NO IN DEPT.DEPTNO%TYPE) AS
-- PGV moved types start

-- PGV moved types end

  v_cursor integer;
  v_dname  char(20);
  v_rows   integer;
BEGIN
  v_cursor := DBMS_SQL.OPEN_CURSOR;
  DBMS_SQL.PARSE(v_cursor, 'select dname from demo.dept where deptno > :x', DBMS_SQL.V7);
  DBMS_SQL.BIND_VARIABLE(v_cursor, ':x', no);
  DBMS_SQL.DEFINE_COLUMN_CHAR(v_cursor, 1, v_dname, 20);
  v_rows := DBMS_SQL.EXECUTE(v_cursor);
  loop
    if DBMS_SQL.FETCH_ROWS(v_cursor) = 0 then
       exit;
    end if;
    DBMS_SQL.COLUMN_VALUE_CHAR(v_cursor, 1, v_dname);
    DBMS_OUTPUT.PUT_LINE('Deptartment name: '||v_dname);
  end loop;
  DBMS_SQL.CLOSE_CURSOR(v_cursor);
EXCEPTION
  when others then
       DBMS_SQL.CLOSE_CURSOR(v_cursor);
       raise_application_error(-20000, 'Unknown Exception Raised: '||sqlcode||' '||sqlerrm);
END;
/
