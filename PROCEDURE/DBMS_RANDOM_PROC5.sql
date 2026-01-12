CREATE OR REPLACE EDITIONABLE PROCEDURE "DEMO"."DBMS_RANDOM_PROC5" 
AS
-- PGV moved types start

-- PGV moved types end

  l_hours_in_day NUMBER := 24;
  l_mins_in_day  NUMBER := 24*60;
  l_secs_in_day  NUMBER := 24*60*60;
BEGIN
  FOR i IN 1 .. 5 LOOP
    DBMS_OUTPUT.put_line('hours= ' || (TRUNC(SYSDATE) + (TRUNC(DBMS_RANDOM.value(0,1000))/l_hours_in_day)));
  END LOOP;
  FOR i IN 1 .. 5 LOOP
    DBMS_OUTPUT.put_line('mins = ' || (TRUNC(SYSDATE) + (TRUNC(DBMS_RANDOM.value(0,1000))/l_mins_in_day)));
  END LOOP;
  FOR i IN 1 .. 5 LOOP
    DBMS_OUTPUT.put_line('secs = ' || (TRUNC(SYSDATE) + (TRUNC(DBMS_RANDOM.value(0,1000))/l_secs_in_day)));
  END LOOP;
END;
/
