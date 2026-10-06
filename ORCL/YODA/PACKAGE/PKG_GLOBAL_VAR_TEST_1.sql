CREATE OR REPLACE NONEDITIONABLE PACKAGE "YODA"."PKG_GLOBAL_VAR_TEST_1" AS

  -- PRAGMA SERIALLY_REUSABLE; -- this has to be added in both spec and body. if added, scope is within the proc only, not at session level
	gv_spec_var1 number := 2;
	gv_spec_emp_join_date date;
	gv_spec_var3 varchar2(50) := 'ABC';
	gv_spec_var4_b boolean := true;
    gv_spec_var5 employees.emp_name%type;
	gv_spec_emp_join_date date := to_date('01-JAN-2020', 'DD-MON-YYYY');
	gv_dept_id	employees.emp_id%type := 10;

    TYPE emp_rec IS RECORD (
		emp_id number, emp_name varchar2(100), sal number, dept_id number, date_of_joining date
    );
    TYPE emp_data_tbl IS VARRAY(10000) OF emp_rec;
    emp_data emp_data_tbl := emp_data_tbl();
    emp_data_temp emp_data_tbl := emp_data_tbl();    

    TYPE emp_data_tbl_row IS TABLE OF employees%ROWTYPE;

    CURSOR emp_cursor IS SELECT count(*) as dept_10_emp_cnt FROM employees where dept_id = 10;
	gv_dept_10_emp_cnt number;	
    CURSOR emp_cursor2 IS SELECT count(*) as dept_10_emp_cnt FROM employees 
							where dept_id = PKG_GLOBAL_VAR_TEST_2.gv_dept_id;
	gv_dept_n_emp_cnt number;	

    CURSOR emp_cursor_data IS SELECT * FROM employees where dept_id in (10, 20);

  --various other types declaration starts  
    TYPE emp_rec_gs IS RECORD (
		emp_id number, emp_name varchar2(100), sal number, dept_id number, date_of_joining date
    );

    TYPE emp_data_tbl_gs IS VARRAY(10000) OF emp_rec_gs;

    gv_spec_emp_data_12 PKG_ORCL_COLLECTIONS_TEST.emp_data_tbl_gs := PKG_ORCL_COLLECTIONS_TEST.emp_data_tbl_gs();
    gv_spec_emp_data_12_temp PKG_ORCL_COLLECTIONS_TEST.emp_data_tbl_gs := PKG_ORCL_COLLECTIONS_TEST.emp_data_tbl_gs();	
	gv_spec_emp_rec_global	emp_rec_global;
	gv_spec_emp_data_tbl_global	emp_data_tbl_global;
    gv_spec_emp_data_14 emp_data_tbl_global := emp_data_tbl_global();

  --various other types declaration ends	

    Procedure P_TEST1(pi_v1 IN number);
    Procedure P_TEST2(pi_v1 IN varchar2);
	Procedure P_TEST3(pi_v1 IN number);
    Procedure P_TEST4(pi_v1 IN number);
    Procedure P_TEST5( 
			department_id_in   IN employees.dept_id%TYPE,
			increase_pct_in    IN PKG_GLOBAL_VAR_TEST_2.gv_spec_incr_pct%type DEFAULT 1.1);
    Procedure P_TEST6( 
	department_id_in   IN employees.dept_id%TYPE,
	increase_pct_in    IN PKG_GLOBAL_VAR_TEST_2.gv_spec_incr_pct%type DEFAULT 1.1);

END PKG_GLOBAL_VAR_TEST_1;


/
;
