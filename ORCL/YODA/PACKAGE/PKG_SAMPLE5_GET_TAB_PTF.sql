create or replace  function  yoda.pkg_sample5_get_tab_ptf (p_rows numeric) returns setof t_tf_tab as $body$
declare
-- pgv moved types start
-- pgv moved types end
begin 

/* dmap converted statement start */
-- package does not have global variables
--dmap conversion comment: gtt declaration added
for i in 1 .. p_rows loop
return next t_tf_row(i,  concat('Description for ', i)) ;/* dmap converted statement end */
end loop;
return;end;
$body$
language plpgsql
stable;
