create or replace procedure demo.dmap_child_pgm_pragma_sample  () as $body$
declare
-- pragma autonomous_transaction;
--ex_continue exception;
l_number    numeric := 0;
new_number numeric := 10;
begin
perform dbms_output.put_line('First Record');/* dmap converted statement start */
insert into test_prag(message) values ( concat('Record CH2.1 from CHILD', new_number)) ;/* dmap converted statement end */
new_number := new_number + 1;/* dmap converted statement start */
insert into test_prag(message) values ( concat('Record CH2.2 from CHILD', new_number)) ;/* dmap converted statement end */
/* commit; */
end;
$body$
language plpgsql
;
CREATE OR REPLACE PROCEDURE demo.child_pgm_pragma_sample() 


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


v_sql := FORMAT('CALL dmap_child_pgm_pragma_sample()' );


SELECT * INTO output1 FROM dblink(v_con_name, v_sql) AS t(result text);


END;

$$ LANGUAGE plpgsql;
CREATE OR REPLACE PROCEDURE demo.child_pgm_pragma_sample() 


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


v_sql := FORMAT('CALL dmap_child_pgm_pragma_sample()' );


SELECT * INTO output1 FROM dblink(v_con_name, v_sql) AS t(result text);


END;

$$ LANGUAGE plpgsql;
CREATE OR REPLACE PROCEDURE demo.child_pgm_pragma_sample() 


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


v_sql := FORMAT('CALL dmap_child_pgm_pragma_sample()' );


SELECT * INTO output1 FROM dblink(v_con_name, v_sql) AS t(result text);


END;

$$ LANGUAGE plpgsql;
