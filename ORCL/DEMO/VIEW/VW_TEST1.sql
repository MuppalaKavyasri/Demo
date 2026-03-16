-- dmap_object_gen_tag : type : view name : vw_test1
set search_path = demo,oracle,dmap_extension,public;/* dmap converted statement start */
create or replace view "vw_test1"  ("col", "col2") as select col, col2  from test1;/* dmap converted statement end */
-- estimed cost of view [ vw_test1 ]: 1.00;
