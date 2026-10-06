CREATE OR REPLACE PROCEDURE yoda.pkg_sample2_spr_delete(PI_EMPLOYEE_ID EMPLOYEE_DETAILS.EMPLOYEE_ID%TYPE,PI_EMPLOYEE_BRANCH_CODE EMPLOYEE_DETAILS.EMPLOYEE_BRANCH_CODE%TYPE) 


AS

$$

DECLARE

v_sql text;

v_con_count int;

v_con_name text;

output1 text;

BEGIN

v_con_name := 'pragma_at_dmap_dblink';

SELECT count(1) INTO v_con_count FROM dblink_get_connections()

WHERE dblink_get_connections__>'{pragma_at_dmap_dblink}';


IF v_con_count = 0 THEN

    PERFORM dblink_connect(v_con_name, 'pragma_at_dmap_dblink');

END IF;


v_sql := FORMAT('CALL dmap_pkg_sample2_spr_delete(PI_EMPLOYEE_ID=> %L,PI_EMPLOYEE_BRANCH_CODE=> %L)' , PI_EMPLOYEE_ID,PI_EMPLOYEE_BRANCH_CODE);


SELECT * INTO output1 FROM dblink(v_con_name, v_sql) AS t(result text);


END;

$$ LANGUAGE plpgsql;
CREATE OR REPLACE PROCEDURE yoda.pkg_sample2_spr_delete(PI_EMPLOYEE_ID EMPLOYEE_DETAILS.EMPLOYEE_ID%TYPE,PI_EMPLOYEE_BRANCH_CODE EMPLOYEE_DETAILS.EMPLOYEE_BRANCH_CODE%TYPE) 


AS

$$

DECLARE

v_sql text;

v_con_count int;

v_con_name text;

output1 text;

BEGIN

v_con_name := 'pragma_at_dmap_dblink';

SELECT count(1) INTO v_con_count FROM dblink_get_connections()

WHERE dblink_get_connections@>'{pragma_at_dmap_dblink}';


IF v_con_count = 0 THEN

    PERFORM dblink_connect(v_con_name, 'pragma_at_dmap_dblink');

END IF;


v_sql := FORMAT('CALL dmap_pkg_sample2_spr_delete(PI_EMPLOYEE_ID=> %L,PI_EMPLOYEE_BRANCH_CODE=> %L)' , PI_EMPLOYEE_ID,PI_EMPLOYEE_BRANCH_CODE);


SELECT * INTO output1 FROM dblink(v_con_name, v_sql) AS t(result text);


END;

$$ LANGUAGE plpgsql;
