-- DMAP_OBJECT_GEN_TAG : TYPE : EDITIONABLE NAME : pkg_global_var_test_1_emp_rec_gs
SET search_path = yoda,oracle,dmap_extension,public;

CREATE TYPE pkg_global_var_test_1_emp_rec_gs AS (
emp_id NUMERIC, emp_name varchar(100), sal NUMERIC, dept_id NUMERIC, date_of_joining TIMESTAMP WITHOUT TIME ZONE

);
