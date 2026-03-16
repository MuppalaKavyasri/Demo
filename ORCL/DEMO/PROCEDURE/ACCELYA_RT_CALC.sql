create or replace procedure demo."accelya_rt_calc"  (x_intdoc_id numeric) as $body$
declare
cnt   numeric:=0;
v_src varchar(5);
v_dst  varchar(5);
v_nxt_dst varchar(5);
v_docmst_id numeric;
v_loop_cnt numeric;
begin
select orig,dest,docmst_id
into strict   v_src,v_dst,v_docmst_id
from   cra_docmst a
where  a.intdoc_id = x_intdoc_id;
--where  docmst_id=x_docmst_id;
for x in 1..25
loop
select count(1) into strict v_loop_cnt
from   cra_bkg
where  docmst_id = v_docmst_id
and    coalesce(route_seq,0) =0;/* dmap converted statement start */
if v_loop_cnt >0 then
perform dbms_output.put_line( concat('Runseq X- ......', x)) ;/* dmap converted statement end */
declare
c1 cursor  for
select seg_dep,seg_arr,route_seq ,docmst_id
from   cra_bkg
where  docmst_id = v_docmst_id;
begin
for n in c1
loop
if n.seg_dep = v_src and nullif(n.route_seq::text, '') is null then
update cra_bkg set route_seq=cnt+1
where  seg_dep = v_src
and    nullif(route_seq::text, '') is null
and    docmst_id=n.docmst_id;
--                                        and rownum=1;--commented on 08-dec-20 for amov issue
v_nxt_dst :=n.seg_arr;
cnt := cnt+1;
end if;
if n.seg_dep = v_nxt_dst then
update cra_bkg set route_seq=cnt+1
where  seg_dep = v_nxt_dst
and    nullif(route_seq::text, '') is null
and    docmst_id=n.docmst_id;
--                                        and rownum=1;--commented on 08-dec-20 for amov issue
v_nxt_dst :=n.seg_arr;
cnt := cnt+1;
end if;/* dmap converted statement start */
/* commit; */
perform dbms_output.put_line( concat('Next_dest...', v_nxt_dst)) ;/* dmap converted statement end */
end loop;
end;
end if;
end loop;
end;
$body$
language plpgsql
;
