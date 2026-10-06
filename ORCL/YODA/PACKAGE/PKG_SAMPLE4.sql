CREATE OR REPLACE EDITIONABLE PACKAGE "YODA"."PKG_SAMPLE4" AS
    PROCEDURE my_proc(  v_number IN number,p_rc OUT SYS_REFCURSOR ); /* Sample for SYS_REF_CURSOR */ 
    FUNCTION my_proc_test(v_number IN NUMBER) RETURN sys_refcursor ; /* Sample for SYS_REF_CURSOR */ 
    PROCEDURE sp_cursor_fetch_exit_loop ;
    PROCEDURE proc_pragma_exception_init ;
END pkg_sample4;
/
CREATE OR REPLACE EDITIONABLE PACKAGE BODY "YODA"."PKG_SAMPLE4" AS 

PROCEDURE my_proc(  v_number IN number,p_rc OUT SYS_REFCURSOR )
as
begin
open p_rc
for select 1 col1
     from dual;
 end;


FUNCTION my_proc_test(v_number IN NUMBER) RETURN sys_refcursor
 as
 p_rc sys_refcursor;
 begin
 my_proc(v_number,p_rc);
 return p_rc;
 end;

PROCEDURE sp_cursor_fetch_exit_loop  IS
  CURSOR cur_test IS  SELECT * FROM test_cur_found ;  
  rec_test  test_cur_found%rowtype;
  res number := 0;

begin
  open cur_test;
  loop
    fetch cur_test into rec_test;
    res  := res +1;
    select count(*) into res  from test_cur_found;
    exit when cur_test%notfound;
  end loop;

  dbms_output.put_line('res = '||res);

end;

PROCEDURE proc_pragma_exception_init IS
    myex EXCEPTION;
    PRAGMA EXCEPTION_INIT(myex,-20015); 
    n NUMBER := 5;
BEGIN
    FOR i IN 1..n LOOP
        dbms_output.put_line(i);
        IF i=n THEN
            RAISE myex;
        END IF;
    END LOOP;
EXCEPTION
    WHEN myex THEN
        dbms_output.put_line('loop finish');
END;

END pkg_sample4;
/;
