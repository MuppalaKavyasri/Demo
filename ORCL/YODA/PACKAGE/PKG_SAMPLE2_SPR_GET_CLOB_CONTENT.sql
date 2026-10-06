create or replace procedure yoda.pkg_sample2_spr_get_clob_content (p_id numeric) as $body$
declare
-- pgv moved types start
-- pgv moved types end
n_index numeric :=0;
n_len         numeric := 0;
n_offset      numeric := 1;
n_buf         numeric := 32767;
n_prevlineend numeric := 0;
row_buffer    varchar(5000);
n_lin_num integer := 1;
pi_limit numeric := 20;
cur_row cursor for
select rawdata from clobdata where id=p_id;
c_row text;
po_row text;
begin 

-- package does not have global variables
--dmap conversion comment: gtt declaration added
open cur_row;
loop
fetch cur_row into c_row;
exit when not found; /* apply on cur_row */
if ( dbms_lob_isopen(c_row) != 1 ) then
dbms_lob_open(c_row, 0);
end if;/* dmap converted statement start */
n_len  := dmap_extension.dmap_dbms_lob_getlength(c_row);/* dmap converted statement end */
while( n_offset < n_len and (n_index+1) < pi_limit)
loop
--n_index := po_row.count();
-- not considering the last char for reading
if (instr(c_row, chr(10) , n_offset)-n_prevlineend-1>0) then
n_buf   := instr(c_row, chr(10) , n_offset)-n_prevlineend-1;/* dmap converted statement start */
else
n_buf :=dmap_extension.dmap_dbms_lob_getlength(c_row);/* dmap converted statement end */
end if;/* dmap converted statement start */
call dmap_extension.dmap_dbms_lob_read(c_row, n_buf, n_offset, row_buffer);/* dmap converted statement end */
-- incrementing the last char position
n_buf := n_buf + 1;
po_row := row_buffer;
insert into clobdatatarget values (n_lin_num,po_row);
n_offset                  := n_offset      + n_buf;
n_prevlineend             := n_prevlineend + n_buf;
n_lin_num                 := n_lin_num     + 1;
--dbms_output.put_line(final clob data || po_row);
end loop;
/* commit; */
end loop;end;
$body$
language plpgsql
;
