CREATE OR REPLACE EDITIONABLE PACKAGE "YODA"."PKG_SAMPLE3" AS
PROCEDURE proc_bulk_collect(p_id number); /* Bulk Collect use case*/
FUNCTION fnc_assctve_array(p_index_value PLS_INTEGER)RETURN NUMBER;/* Associative array usecase - Use temporary table to convert the same */
PROCEDURE start_temp(p_id IN integer);
PROCEDURE check_temp;
PROCEDURE update_temp(p_id IN INTEGER);
PROCEDURE stop_temp(p_id IN INTEGER);
PROCEDURE spr_get_concat_results; /* Displays different scenarios to concat strings */
function outer_join(p_in varchar2) return integer; /*outer join usecase*/
procedure test_forall_proc(p_id number);
procedure test_forall_proc_1(p_id number);
PROCEDURE test_bind_variable_out(id number);/* Bind variable use case */
PROCEDURE test_unipivot(id number);/*unpivot use case*/
END pkg_sample3;
/
CREATE OR REPLACE EDITIONABLE PACKAGE BODY "YODA"."PKG_SAMPLE3" AS 
PROCEDURE PROC_BULK_COLLECT(p_id number)
IS
    TYPE test_type IS RECORD (
        id      NUMBER,
        name    VARCHAR2(50)
    );
    TYPE test_tbl IS
        TABLE OF test_type INDEX BY BINARY_INTEGER;
    v_tab   test_tbl;
    v_rec   test_type;
    i       INTEGER;
BEGIN
    i := 1;
    SELECT id,name
	  BULK COLLECT
		  INTO v_tab
    FROM TEST WHERE ID !=p_id;
   dbms_output.put_line('count='||v_tab.count);
    FOR i IN v_tab.first..v_tab.last LOOP 
    dbms_output.put_line('row '|| v_tab(i).id || v_tab(i).name);                                                    
    END LOOP;
END PROC_BULK_COLLECT;

FUNCTION FNC_ASSCTVE_ARRAY(p_index_value PLS_INTEGER)
RETURN NUMBER IS
   TYPE list_of_names_t IS TABLE OF VARCHAR2 (32767) 
                              INDEX BY PLS_INTEGER; 

   happyfamily     list_of_names_t; 
   -- Could also use a predefined array type! 
   --happyfamily     dbms_sql.varchar2_table; 
   l_index_value   PLS_INTEGER := p_index_value; /*p_index_value 88*/
BEGIN 
   happyfamily (1) := 'Eli'; 
   happyfamily (-15070) := 'Steven'; 
   happyfamily (3) := 'Chris'; 
   happyfamily (l_index_value) := 'Veva'; 
   happyfamily (9999999) := 'Loey'; 
   happyfamily (9999998) := 'Lauren'; 

   DBMS_OUTPUT.put_line (happyfamily.COUNT); 
   -- 
   l_index_value := happyfamily.FIRST; 

   WHILE (l_index_value IS NOT NULL) 
   LOOP 
      DBMS_OUTPUT.put_line ( 
            'Name at index ' 
         || l_index_value 
         || ' = ' 
         || happyfamily (l_index_value)); 

      l_index_value := happyfamily.NEXT (l_index_value); 
   END LOOP; 
   RETURN 0;

END FNC_ASSCTVE_ARRAY; 

PROCEDURE start_temp (
p_id IN integer
)
IS
v_count INTEGER;
v_id INTEGER;
v_description varchar2(10);
BEGIN

INSERT INTO my_temp_table VALUES (1, 'ONE');

select id,description into v_id,v_description from my_temp_table where id=p_id;

dbms_output.put_line('id '||v_id||' description '||v_description);

check_temp;

END start_temp;

PROCEDURE check_temp
IS
v_count INTEGER;
BEGIN

SELECT COUNT(*) into v_count FROM my_temp_table;

dbms_output.put_line('count: '||v_count);

update_temp(1);

END check_temp;


PROCEDURE update_temp (
p_id IN INTEGER
)
IS
v_id INTEGER;
v_description varchar2(10);
BEGIN


update my_temp_table set description='tested' where id=p_id;

select id,description into v_id,v_description from my_temp_table where id=p_id;

dbms_output.put_line('id '||v_id||'description '||v_description);

stop_temp(1);

END update_temp;

PROCEDURE stop_temp (p_id IN INTEGER)
IS
BEGIN
DELETE from my_temp_table where id=p_id;
dbms_output.put_line('data deleted');
END stop_temp;

PROCEDURE  spr_get_concat_results
IS
BEGIN

dbms_output.put_line ('Combine strings with || with NOT Null values: '||'Happy'||' coding');

dbms_output.put_line ('Combine strings with || with Null values: '|| NULL||' coding');

dbms_output.put_line ('Combine strings with || with blank values: '||''||' coding');

dbms_output.put_line ('Concat with escape Single quote: '||CONCAT('It''s',' Happy coding'));

dbms_output.put_line ('Concat with NOT Null values: '||CONCAT('Happy',' coding'));

dbms_output.put_line ('Concat with Null value: '||CONCAT(NULL,' coding'));

dbms_output.put_line ('Concat with blank value: '||CONCAT('',' coding'));

dbms_output.put_line ('Concat with escape Single quote: '||CONCAT('It''s',' Happy coding'));

exception
when others then
raise;

END spr_get_concat_results;

PROCEDURE update_multiple_column_prc           
  (id number)
IS
begin

    UPDATE sample_user_action ca
    		SET
    		(
    		ca.gross_receipt_factor_amt,
            ca.net_receipt_factor_amt,
            ca.receipt_symbol,
            ca.receipt_asset_id,
            ca.sample_user_action_type_id,
            ca.sample_user_action_class_id,
    		ca.last_chg_user_nm
    		) =
    		(
    		SELECT gross_receipt_factor_amt,
            net_receipt_factor_amt,
            receipt_symbol,
            receipt_asset_id,
            sample_user_action_type_id,
            sample_user_action_class_id,
    		last_chg_user_nm
    		FROM TEMP_sample_user_action_BKP
    		WHERE ex_dt = ca.ex_dt AND
    		load_type_cd = 'U' AND
    		data_source_id = ca.data_source_id AND
    		ca_asset_id = ca.ca_asset_id AND
    		ex_dt = ca.ex_dt AND
    		processing_seq_num = ca.processing_seq_num
    		)
    		WHERE rowid IN
    		(
            SELECT ca.rowid
            FROM TEMP_sample_user_action_BKP tca,
            sample_user_action ca
    		WHERE tca.ex_dt = ca.ex_dt AND
    		tca.load_type_cd = 'U' AND
    		tca.data_source_id = ca.data_source_id AND
    		tca.ca_asset_id = ca.ca_asset_id AND
    		tca.ex_dt = ca.ex_dt AND
    		tca.processing_seq_num = ca.processing_seq_num AND
            (
            nvl(tca.gross_receipt_factor_amt, -1) != nvl(ca.gross_receipt_factor_amt, -1) OR
            nvl(tca.net_receipt_factor_amt, -1) != nvl(ca.net_receipt_factor_amt, -1) OR
            nvl(tca.receipt_symbol, '~') != nvl( ca.receipt_symbol, '~') OR
            nvl(tca.receipt_asset_id, -1) != nvl(ca.receipt_asset_id, -1) OR
            nvl(tca.sample_user_action_type_id, -1) != nvl(ca.sample_user_action_type_id, -1) OR
            nvl(tca.sample_user_action_class_id, -1) != nvl(ca.sample_user_action_class_id, -1)
    		)
    		);


END update_multiple_column_prc;

function outer_join(p_in varchar2) 
return integer as

cnt integer;

begin

if p_in = 'left outer'

then

    select count(*) into cnt from employee_outer_join e1 left outer join employee_details_outer_join e2
    on
    e1.mobile_no = e2.employee_mobile_number
    ;

    return cnt;

elsif p_in = 'full outer'
then

        select count(*) into cnt from employee_outer_join e1 full outer join employee_details_outer_join e2
        on 
        e1.mobile_no = e2.employee_mobile_number
        ;

        return cnt;

else

        dbms_output.put_line('incorrect input');
        return -1;

end if;

exception
when others then

dbms_output.put_line(SQLERRM);
return -1;

end outer_join;
procedure TEST_FORALL_PROC
(
 p_id number
 )
 as

type emp_info_type is  table of employee%rowtype;
emp_info_type_tbl emp_info_type;
V_SQL VARCHAR2(400);
startTime INTEGER:= dbms_utility.get_time;

 begin

    V_SQL:= ' select e.emp_id,
                   e.emp_name,
                   e.email_id,
                   e.date_of_birth,
                   e.joining_date,
                   e.salary,
                   e.comm,
                   e.department,
                   e.mobile_no,
                   e.address
       			from employee e '||' where e.emp_id=:p_id';

 EXECUTE IMMEDIATE V_SQL BULK COLLECT INTO emp_info_type_tbl USING p_id;


 forall I in 1 ..emp_info_type_tbl.count  

  MERGE INTO employee_bkp a
    USING employee b
    ON (a.emp_id = b.emp_id)
    WHEN MATCHED THEN
      UPDATE SET
        emp_name       = emp_info_type_tbl(i).emp_name,
        email_id = emp_info_type_tbl(i).email_id,
        salary = emp_info_type_tbl(i).salary,
        department=emp_info_type_tbl(i).department,
        address=emp_info_type_tbl(i).address,
        mobile_no=emp_info_type_tbl(i).mobile_no,
        date_of_birth=emp_info_type_tbl(i).date_of_birth,
        joining_date=emp_info_type_tbl(i).joining_date
    WHEN NOT MATCHED THEN
      INSERT (emp_id,emp_name, email_id, salary, department,address,mobile_no,date_of_birth,joining_date)
      VALUES (emp_info_type_tbl(i).emp_id,
             emp_info_type_tbl(i).emp_name,
             emp_info_type_tbl(i).email_id, 
             emp_info_type_tbl(i).salary, 
             emp_info_type_tbl(i).department,
             emp_info_type_tbl(i).address,
             emp_info_type_tbl(i).mobile_no,
             emp_info_type_tbl(i).date_of_birth,
             emp_info_type_tbl(i).joining_date);

   dbms_output.put_line('Total Time taken to load the table:  - ' ||
                               to_char(ROUND((dbms_utility.get_time -
                                             startTime) / 6000,
                                             2)) || ' Minutes');

exception
when others then
rollback;	
raise;
end TEST_FORALL_PROC;

procedure TEST_FORALL_PROC_1
(
 p_id number
 )
 as

type emp_info_type is  table of employee%rowtype;
emp_info_type_tbl emp_info_type;
V_SQL VARCHAR2(400);
startTime INTEGER:= dbms_utility.get_time;

 begin

delete from sale_stats where id=p_id;

   dbms_output.put_line('Total Time taken to delete the table data:  - ' ||
                               to_char(ROUND((dbms_utility.get_time -
                                             startTime) / 6000,
                                             2)) || ' Minutes');


exception
when others then
rollback;	
raise;
end TEST_FORALL_PROC_1;


PROCEDURE test_bind_variable_out          
  (id number)
IS
v_fiscal_year int;
v_product_b int;
v_id int:=id;
begin

EXECUTE IMMEDIATE 
'declare '||
'v_fiscal_year int; v_product_b int;'||
'begin '||
'select fiscal_year,product_b into v_fiscal_year,v_product_b from sale_stats '||
'where id =:v_id ; 
:v_fiscal_year := v_fiscal_year; :v_product_b=v_product_b;
end;' 
USING in v_id,OUT v_fiscal_year,OUT v_product_b;

dbms_output.put_line('v_fiscal_year:='||v_fiscal_year|| ' & '||'v_product_b :='||v_product_b);


END test_bind_variable_out;

PROCEDURE test_unipivot          
  (id number)
IS
begin

insert into sale_stats_report 
SELECT * FROM sale_stats
UNPIVOT(
    quantity  -- unpivot_clause
    FOR product_code --  unpivot_for_clause
    IN ( -- unpivot_in_clause
        product_a AS 'A', 
        product_b AS 'B', 
        product_c AS 'C'
    )
);

END test_unipivot;

END pkg_sample3;
/;
