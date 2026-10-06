-- dmap_object_gen_tag : type : table name : bfile_icons
set search_path = yoda,oracle,dmap_extension,public;
create table "bfile_icons"  (
icon_id varchar(100) not null,
icon_rel_path varchar(1000),
icon_grapic bytea
) ;
-- dmap_object_gen_tag : type : alter table name : bfile_icons
set search_path = yoda,oracle,dmap_extension,public;
alter table bfile_icons add primary key (icon_id);
-- dmap_object_gen_tag : type : alter table name : bfile_icons
set search_path = yoda,oracle,dmap_extension,public;
alter table bfile_icons alter column icon_id set not null;
