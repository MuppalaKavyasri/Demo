CREATE OR REPLACE NONEDITIONABLE PROCEDURE "YODA"."SP_BULK_COLLECT_WITH_LIMIT_DUMMY" IS
-- PGV moved types start

-- PGV moved types end

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
/
