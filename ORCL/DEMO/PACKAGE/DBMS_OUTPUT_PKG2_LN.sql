create or replace procedure demo.dbms_output_pkg2_ln (val boolean) as $body$
declare
-- pgv moved types start
-- pgv moved types end
begin
call dmap_extension.pkg_var_dmap_tab_to_gtt_init('DEMO', 'DBMS_OUTPUT_PKG2');
--dmap conversion comment: gtt declaration added
if val then call dbms_output_pkg2_ln('TRUE');
elsif not val then
call dbms_output_pkg2_ln('FALSE');
else
call dbms_output_pkg2_ln('NULL BOOLEAN');
end if;end;
$body$
language plpgsql
;
create or replace procedure demo.dbms_output_pkg2_ln (val numeric) as $body$
declare
-- pgv moved types start
-- pgv moved types end
begin
call dmap_extension.pkg_var_dmap_tab_to_gtt_init('DEMO', 'DBMS_OUTPUT_PKG2');
--dmap conversion comment: gtt declaration added
call dbms_output_pkg2_ln(to_char(val));end;
$body$
language plpgsql
;
create or replace procedure demo.dbms_output_pkg2_ln (val varchar) as $body$
declare
-- pgv moved types start
-- pgv moved types end
begin
call dmap_extension.pkg_var_dmap_tab_to_gtt_init('DEMO', 'DBMS_OUTPUT_PKG2');
--dmap conversion comment: gtt declaration added
if length(val) > 255 then
--plvprs.display_wrap (val, c_linelen);
null;/* dmap converted statement start */
else perform dbms_output.put_line(dmap_extension.f_dmap_get_pkg_var('DEMO' , 'DBMS_OUTPUT_PKG2', 'C_PREFIX', 'CHAR', 'N'):: concat(char, val)) ;/* dmap converted statement end */
end if;
exception
when others then
perform dbms_output.enable(1000000);/* dmap converted statement start */
perform dbms_output.put_line(dmap_extension.f_dmap_get_pkg_var('DEMO' , 'DBMS_OUTPUT_PKG2', 'C_PREFIX', 'CHAR', 'N'):: concat(char, val)) ;/* dmap converted statement end */
end;
procedure call dbms_output_pkg2_ln (val in date)
is
-- pgv moved types start
-- pgv moved types end
begin
call dmap_extension.pkg_var_dmap_tab_to_gtt_init('DEMO', 'DBMS_OUTPUT_PKG2');
--dmap conversion comment: gtt declaration added
call dbms_output_pkg2_ln(to_char(val));end;
$body$
language plpgsql
;
