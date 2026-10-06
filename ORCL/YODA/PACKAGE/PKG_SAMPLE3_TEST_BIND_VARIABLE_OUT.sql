create or replace procedure yoda.pkg_sample3_test_bind_variable_out (id numeric) as $body$
declare
-- pgv moved types start
-- pgv moved types end
v_fiscal_year integer;
v_product_b integer;
v_id integer:=id;
begin 

/* dmap converted statement start */
-- package does not have global variables
--dmap conversion comment: gtt declaration added
/* dmap converted statement start */ execute  concat('DO $$ declare :v_fiscal_year int; :v_fiscal_year int; BEGIN select fiscal_year, product_b into STRICT :v_fiscal_year, :v_fiscal_year from sale_stats where ', id , ' =v_' , id , '; ::v_fiscal_year := :v_fiscal_year; ::v_fiscal_year=:v_fiscal_year ;END ')  using in v_id,out v_fiscal_year,out v_product_b; /* dmap converted statement end *//* dmap converted statement start */
/* dmap converted statement end */
perform dbms_output.put_line( concat('v_fiscal_year:=', v_fiscal_year, ' & ', 'v_product_b :=', v_product_b)) ;/* dmap converted statement end */end;
$body$
language plpgsql
;
