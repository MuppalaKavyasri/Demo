-- dmap_object_gen_tag : type : sequence name : sport_team_seq
set search_path = yoda,oracle,dmap_extension,public;
create sequence "sport_team_seq"  increment 10 minvalue 1 no maxvalue start 801 cache 20;
