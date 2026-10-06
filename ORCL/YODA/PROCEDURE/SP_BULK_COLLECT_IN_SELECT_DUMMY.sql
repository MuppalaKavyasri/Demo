CREATE OR REPLACE NONEDITIONABLE PROCEDURE "YODA"."SP_BULK_COLLECT_IN_SELECT_DUMMY" IS
-- PGV moved types start

-- PGV moved types end

  TYPE t_bulk_collect_test_tab IS TABLE OF test_table%ROWTYPE;
  l_tab    t_bulk_collect_test_tab := t_bulk_collect_test_tab();
BEGIN

  /* Populate the array using BULK COLLECT that retrieves all rows in a single FETCH ,
     Using SELECT INTO CLAUSE */

  SELECT *
  BULK COLLECT INTO l_tab
  FROM   test_table;

  DBMS_OUTPUT.put_line('Bulk count: (' || l_tab.count || ' rows): ' );
END;

select * from test_table;
/
