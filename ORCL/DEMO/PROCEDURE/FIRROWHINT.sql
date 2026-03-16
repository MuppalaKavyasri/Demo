create or replace procedure demo."firrowhint"  (p1 inout integer) as $body$
begin
/* dmap converted statement start */
select /*+ rows */ count(*) into strict p1 from demo.emp;/* dmap converted statement end */
perform dbms_output.put_line(p1);end;
$body$
language plpgsql
;
