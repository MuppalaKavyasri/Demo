CREATE OR REPLACE EDITIONABLE PACKAGE "YODA"."PKG_SAMPLE5" AS
PROCEDURE COMPOSITETYPE_TEST_Proc(p1 number, t1 out test_inout_out_as_fn_param.typ,  d1 out test_inout_out_as_fn_param.dom1); /*handle composite INOUT/OUT type as function parameters in Aurora/POSTGRES */
PROCEDURE standard_newtime(tm1 timestamp); /* Migrating Oracle standard.new_time function in Aurora/RDS PostgreSQL */
FUNCTION get_tab_ptf (p_rows IN NUMBER) RETURN t_tf_tab PIPELINED;/* Oracle pipelined function to PostgreSQL */
PROCEDURE CONNECT_BY_PRIOR_PROC; /* Heirarchical query with connect by prior */
PROCEDURE  SYS_CONNECT_BY_PATH_PROC ; /* Heirarchical query SYS_CONNECT_BY_PATH */
PROCEDURE NO_CYCLE_PROC; /* Heirarchical query WITH NO CYCLE  */
PROCEDURE ORDER_BY_SIBLIN_PROC; /* Heirarchical query WITH ORDER BY SIBLING  */
PROCEDURE CONNECT_BY_ISLEAF_PROC;  /* Heirarchical query WITH CONNECT_BY_ISLEAF  */
PROCEDURE CONNECT_BY_ROOT_PROC; /* Heirarchical query WITH CONNECT_BY_ROOT  */
END pkg_sample5;
/
CREATE OR REPLACE EDITIONABLE PACKAGE BODY "YODA"."PKG_SAMPLE5" AS 

PROCEDURE COMPOSITETYPE_TEST_Proc(p1 number, t1 out test_inout_out_as_fn_param.typ,  d1 out test_inout_out_as_fn_param.dom1)
IS
begin
t1.a := 1 ;
t1.b := 'abc' ;
d1  := test_inout_out_as_fn_param.dom1(1,2,3);
END;

PROCEDURE standard_newtime(tm1 timestamp)
IS
tm2 timestamp;
begin
tm2 := tm1;
SELECT
 to_char(NEW_TIME( TO_DATE( tm2, 'MM-DD-YYYY HH24:MI:SS' ),  'est', 'ast'), 'MM-DD-YYYY HH24:MI:SS') into tm2
from dual;
END;

-- Build a pipelined table function.
FUNCTION get_tab_ptf (p_rows IN NUMBER) RETURN t_tf_tab PIPELINED AS
BEGIN
  FOR i IN 1 .. p_rows LOOP
    PIPE ROW(t_tf_row(i, 'Description for ' || i));   
  END LOOP;

  RETURN;
END;


PROCEDURE CONNECT_BY_PRIOR_PROC
IS
   c_emp_no hier_test.emp_no%type; 
   c_name hier_test.ename%type; 
   c_job hier_test.job%type; 
   c_level hier_test.manager_no%type; 

CURSOR cursor_name IS 
 SELECT  emp_no,ename,job,level
  FROM hier_test
  CONNECT BY PRIOR emp_no = manager_no
  START WITH manager_no IS NULL
  order by level ;

begin
        open cursor_name;
        LOOP
            FETCH  cursor_name  INTO c_emp_no,c_name,c_job,c_level;
            EXIT WHEN cursor_name%NOTFOUND;
            dbms_output.put_line(c_emp_no || ' ' || c_name || ' ' || c_job|| ' ' ||c_level); 
        END LOOP;
END;

PROCEDURE SYS_CONNECT_BY_PATH_PROC
IS
   c_emp_no hier_test.emp_no%type; 
   c_name hier_test.ename%type; 
   c_job hier_test.job%type; 
   c_level VARCHAR2(100); 

CURSOR cursor_name IS 
SELECT  emp_no,ename,job,SYS_CONNECT_BY_PATH(ename,';') PATH
FROM hier_test
CONNECT BY PRIOR  emp_no = manager_no
START WITH manager_no is null
order by level ;

begin
        open cursor_name;
        LOOP
            FETCH  cursor_name  INTO c_emp_no,c_name,c_job,c_level;
            EXIT WHEN cursor_name%NOTFOUND;
            dbms_output.put_line(c_emp_no || ' ' || c_name || ' ' || c_job|| ' ' ||c_level); 
        END LOOP;
END;

PROCEDURE NO_CYCLE_PROC
IS
   c_emp_no hier_test.emp_no%type; 
   c_name hier_test.ename%type; 
   c_job hier_test.job%type; 
   c_level VARCHAR2(100); 

CURSOR cursor_name IS 
SELECT  emp_no,ename,job,SYS_CONNECT_BY_PATH(ename,';')
FROM hier_test
CONNECT BY NOCYCLE PRIOR  emp_no = manager_no
START WITH manager_no is null
order by level ;

begin
        open cursor_name;
        LOOP
            FETCH  cursor_name  INTO c_emp_no,c_name,c_job,c_level;
            EXIT WHEN cursor_name%NOTFOUND;
            dbms_output.put_line(c_emp_no || ' ' || c_name || ' ' || c_job|| ' ' ||c_level); 
        END LOOP;
END;

PROCEDURE ORDER_BY_SIBLIN_PROC
IS
   c_emp_no hier_test.emp_no%type; 
   c_name hier_test.ename%type; 
   c_job hier_test.job%type; 
   c_mgr number; 
   c_level number; 

CURSOR cursor_name IS 
SELECT emp_no,ename,job,manager_no,level
 from hier_test
 start with manager_no is null
 CONNECT BY nocycle PRIOR  emp_no = manager_no
order siblings by ename;

begin
        open cursor_name;
        LOOP
            FETCH  cursor_name  INTO c_emp_no,c_name,c_job,c_mgr,c_level;
            EXIT WHEN cursor_name%NOTFOUND;
            dbms_output.put_line(c_emp_no || ' ' || c_name || ' ' || c_job|| ' ' ||c_level); 
        END LOOP;
END;

PROCEDURE CONNECT_BY_ISLEAF_PROC
IS
   c_emp_no hier_test.emp_no%type; 
   c_name hier_test.ename%type; 
   c_job hier_test.job%type; 
   c_mgr number; 
   c_level number; 
   c_path varchar2(100);
   c_isleaf varchar2(100);

CURSOR cursor_name IS 
SELECT emp_no,ename,job,manager_no,level,SYS_CONNECT_BY_PATH (ename,';') PATH,CONNECT_BY_ISLEAF  ISLEAF
 from hier_test
 start with manager_no is null
 CONNECT BY nocycle PRIOR  emp_no = manager_no
order siblings by job;

begin
        open cursor_name;
        LOOP
            FETCH  cursor_name  INTO c_emp_no,c_name,c_job,c_mgr,c_level,c_path,c_isleaf;
            EXIT WHEN cursor_name%NOTFOUND;
            dbms_output.put_line(c_emp_no || ' ' || c_name || ' ' || c_job|| ' ' ||c_level); 
        END LOOP;
END;

PROCEDURE CONNECT_BY_ROOT_PROC
IS
   c_emp_no hier_test.emp_no%type; 
   c_name hier_test.ename%type; 
   c_job hier_test.job%type; 
   c_mgr number; 
   c_level number; 
   c_path varchar2(100);
   c_connect_rootname varchar2(100);

CURSOR cursor_name IS 
SELECT emp_no,ename,job,manager_no,level,SYS_CONNECT_BY_PATH (ename,';') PATH,CONNECT_BY_ROOT ename
 from hier_test
 start with manager_no is null
 CONNECT BY nocycle PRIOR  emp_no = manager_no;

begin
        open cursor_name;
        LOOP
            FETCH  cursor_name  INTO c_emp_no,c_name,c_job,c_mgr,c_level,c_path,c_connect_rootname;
            EXIT WHEN cursor_name%NOTFOUND;
            dbms_output.put_line(c_emp_no || ' ' || c_name || ' ' || c_job|| ' ' ||c_level); 
        END LOOP;
END;

END pkg_sample5;
/;
