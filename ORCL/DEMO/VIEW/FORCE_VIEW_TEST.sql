-- dmap_object_gen_tag : type : view name : force_view_test
set search_path = demo,oracle,dmap_extension,public;/* dmap converted statement start */
create or replace view "force_view_test"  ("c1", "c2", "c3", "c4") as select c1,  c2,  c3,  c4  from demo.force_view_test1;/* dmap converted statement end */
-- estimed cost of view [ force_view_test ]: 1.00;
