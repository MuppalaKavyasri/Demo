CREATE OR REPLACE EDITIONABLE PACKAGE "YODA"."PKG_BULK_BIND_SAMPLE" AS
    PROCEDURE sp_bulk_collect_in_select; /* Bulk collect in select use case */
    PROCEDURE sp_bulk_collect_with_limit; /*  Bulk collect with limit use case */
    PROCEDURE sp_bulk_collect_forall; /*  Bulk collect forall use case */

END pkg_bulk_bind_sample;
/
CREATE OR REPLACE EDITIONABLE PACKAGE BODY "YODA"."PKG_BULK_BIND_SAMPLE" AS 

PROCEDURE sp_bulk_collect_in_select  IS
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

PROCEDURE sp_bulk_collect_with_limit  IS
CURSOR c1 IS SELECT ID FROM TEST_TABLE;
TYPE V_TAB IS TABLE OF INTEGER INDEX BY BINARY_INTEGER;
V_ID   V_TAB;
len INTEGER; 
BEGIN 
Open c1;
 LOOP
   /* Here we are using limit along with BULK COLLECT to limit the no of rows to 
     1000 for each loop */
   Fetch c1 bulk collect into V_ID limit 1000; 
   len:=V_ID.COUNT;
   DBMS_OUTPUT.PUT_LINE('len-'||len);
EXIT WHEN C1%NOTFOUND;
End loop;
 Close c1;
END;


PROCEDURE sp_bulk_collect_forall  IS
   TYPE V_TEST IS TABLE OF TEST_TABLE%ROWTYPE;
   V_TAB  V_TEST;
   V_COUNT INTEGER;
BEGIN

 SELECT t.*
     BULK COLLECT INTO V_TAB
     FROM TEST_TABLE t;

 FOR i IN V_TAB.FIRST .. V_TAB.LAST 
    LOOP
   if MOD(V_TAB(I).ID, 2) = 0 THEN
/* Modifying the value of array elements */
    V_TAB(I).name    := 'EVEN';

END IF;
    END LOOP;

   DBMS_OUTPUT.put_line('Retrieved-'||TO_CHAR (V_TAB.COUNT)||' rows');

SELECT COUNT(1) INTO V_COUNT FROM TEST_TABLE2;

   DBMS_OUTPUT.put_line ('BEFORE TABLE COUNT-'||V_COUNT);

   FORALL i IN 1 .. V_TAB.COUNT

      INSERT INTO TEST_TABLE2
                  (
                  ID, 
                   NAME,
                   LOGIN_DATE
                   )
             VALUES 
                   (
                   V_TAB(i).ID, 
                   V_TAB(i).NAME,
                   V_TAB(i).LOGIN_DATE
                   );
   COMMIT;

  SELECT COUNT(1) INTO V_COUNT FROM TEST_TABLE2;

   DBMS_OUTPUT.put_line ('AFTER TABLE COUNT-'||V_COUNT);
END;

END pkg_bulk_bind_sample;
/;
