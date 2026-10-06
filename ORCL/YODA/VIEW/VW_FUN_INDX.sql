-- dmap_object_gen_tag : type : view name : vw_fun_indx
set search_path = yoda,oracle,dmap_extension,public;/* dmap converted statement start */
create or replace view "vw_fun_indx"  ("ac1", "bc1", "ac2", "bc2") as select a.col_1 ac1, b.col_1 bc1, a.col_2 ac2, b.col_2 bc2  from
test_index_1 a,test_index_2 b where a.col_1=b.col_1 and
(to_char(a.col_2,'YYYYMMDD'))::numeric =(to_char(trunc(b.col_4),'YYYYMMDD'))::numeric;/* dmap converted statement end */
-- estimed cost of view [ vw_fun_indx ]: 1.10;
