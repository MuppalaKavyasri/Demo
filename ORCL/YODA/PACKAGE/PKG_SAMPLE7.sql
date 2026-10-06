CREATE OR REPLACE EDITIONABLE PACKAGE "YODA"."PKG_SAMPLE7" AS
PROCEDURE calc_stats_new1 (
                                              a NUMBER,
                                              b NUMBER,
                                              result out NUMBER
                                            ) ; /* Oracle outbind Variable */
PROCEDURE calc_stats_new2 (
                                              a NUMBER,
                                              b NUMBER
                                            )  ; /* Oracle outbind Variable */

FUNCTION fnc_Test_SavePoint(i_flag BOOLEAN) RETURN NUMBER;  /* Save Point Example */

PROCEDURE member_functions_proc; /* Oracle sample code for user defined data types having member functions */

PROCEDURE BULK_DATA_LOAD(asOfDate IN NUMBER DEFAULT NULL);  /* dbms_utility.get_time sample script */

PROCEDURE sys_context_proc(asOfDate IN NUMBER DEFAULT NULL); /* sys context example */

END pkg_sample7;
/
CREATE OR REPLACE EDITIONABLE PACKAGE BODY "YODA"."PKG_SAMPLE7" AS 

PROCEDURE calc_stats_new1 (
                                              a NUMBER,
                                              b NUMBER,
                                              result out NUMBER
                                            )                                                                                   
IS
BEGIN
result:=a+b;
END;


PROCEDURE calc_stats_new2 (
                                              a NUMBER,
                                              b NUMBER
                                            )                                                                                   
IS
 --a NUMBER := 4;
 -- b NUMBER := 7;
  plsql_block VARCHAR2(100);
  output number;
BEGIN
  plsql_block := 'BEGIN calc_stats_new1(:a, :b,:output); END;';
  EXECUTE IMMEDIATE plsql_block USING a, b,out output;  -- calc_stats(a, a, b, a)
  DBMS_OUTPUT.PUT_LINE('output:'||output);
END;

FUNCTION fnc_Test_SavePoint(i_flag BOOLEAN)
RETURN NUMBER
IS
  v_cnt  INTEGER;
BEGIN
  SELECT count(1) INTO v_cnt FROM Test_SavePoint;
  DBMS_OUTPUT.PUT_LINE('1 - v_cnt:'||v_cnt);

  INSERT INTO Test_SavePoint VALUES(1, 'Test-1');
  INSERT INTO Test_SavePoint VALUES(2, 'Test-2');
  INSERT INTO Test_SavePoint VALUES(3, 'Test-3');

  SELECT count(1) INTO v_cnt FROM Test_SavePoint;
  DBMS_OUTPUT.PUT_LINE('2 - v_cnt:'||v_cnt);

  SAVEPOINT My_SVP;

  INSERT INTO Test_SavePoint VALUES(10, 'Test-10');
  INSERT INTO Test_SavePoint VALUES(20, 'Test-20');

  SELECT count(1) INTO v_cnt FROM Test_SavePoint;
  DBMS_OUTPUT.PUT_LINE('3 - v_cnt:'||v_cnt);

  --if TRUE then Rolls back till SAVEPOINT declaration
  IF i_flag THEN
    ROLLBACK TO My_SVP;
    RETURN 1;
  END IF;

  INSERT INTO Test_SavePoint VALUES(100, 'Test-100');
  INSERT INTO Test_SavePoint VALUES(200, 'Test-200');

  SELECT count(1) INTO v_cnt FROM Test_SavePoint;
  DBMS_OUTPUT.PUT_LINE('4 - v_cnt:'||v_cnt); 
  RETURN 0; 

END;

PROCEDURE member_functions_proc IS
 v1 TABLE_STATS_TYP;
 v2 TABLE_STATS_TYP;
BEGIN
v1 := TABLE_STATS_TYP(
    		10,
    		20,
    		30,
    		40,
    		sysdate,
    		sysdate-1
       );
 dbms_output.put_line('V1 --> '||v1.insertedCount||','||v1.updatedCount||','||v1.deletedCount||','||v1.unchangedCount);
 v1.reset;
 dbms_output.put_line('RESET V1 --> '||v1.insertedCount||','||v1.updatedCount||','||v1.deletedCount||','||v1.unchangedCount);
 v2 := TABLE_STATS_TYP.create_new;
 dbms_output.put_line('NEW V2 --> '||v2.insertedCount||','||v2.updatedCount||','||v2.deletedCount||','||v2.unchangedCount);
 v1.insertedCount := 33;
 v1.updatedCount := 105;
 v2.insertedCount := 66;
 v2.unchangedCount := 50;
 dbms_output.put_line('UPDATED V1 --> '||v1.insertedCount||','||v1.updatedCount||','||v1.deletedCount||','||v1.unchangedCount);
 dbms_output.put_line('UPDATED V2 --> '||v2.insertedCount||','||v2.updatedCount||','||v2.deletedCount||','||v2.unchangedCount);

 v1.PLUS_EQUAL(v2);
 dbms_output.put_line('PLUS_EQUAL V1 --> '||v1.insertedCount||','||v1.updatedCount||','||v1.deletedCount||','||v1.unchangedCount);
 dbms_output.put_line('PLUS_EQUAL V2 --> '||v2.insertedCount||','||v2.updatedCount||','||v2.deletedCount||','||v2.unchangedCount);
END;


PROCEDURE BULK_DATA_LOAD(asOfDate IN NUMBER DEFAULT NULL)
     AS		
		startTime PLS_INTEGER := dbms_utility.get_time;

	BEGIN

        INSERT INTO BULK_TEST_TABLE
          WITH t(n) AS (
          SELECT 1  from dual
          UNION ALL
            SELECT n+1 FROM t WHERE n < 50000
        )
        SELECT n as id,'test_'||n as name ,sysdate+n as login_date FROM t;


	    DBMS_OUTPUT.PUT_LINE('Time taken to complete Procedure:'||to_char(ROUND((dbms_utility.get_time - startTime)/6000,2))||' Minutes');

END;

PROCEDURE sys_context_proc(asOfDate IN NUMBER DEFAULT NULL)
     AS		
osuser VARCHAR2(10);
uname VARCHAR2(10);
ipaddress VARCHAR2(10);
	BEGIN

  SELECT sys_context ('USERENV', 'OS_USER'),
          sys_context ('USERENV', 'SESSION_USER'),
          sys_context ( 'USERENV', 'IP_ADDRESS' ) INTO osuser,uname,ipaddress FROM dual;

	    DBMS_OUTPUT.PUT_LINE('OS USER:'||osuser);
		DBMS_OUTPUT.PUT_LINE('SESSION USER:'||uname);
		DBMS_OUTPUT.PUT_LINE('USER ENV :'||ipaddress);
END;

END pkg_sample7;
/;
