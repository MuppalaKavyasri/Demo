-- dmap_object_gen_tag : type : index name : md_state_type__id
set search_path = demo,oracle,dmap_extension,public;
create index md_state_type__id on md_applicationfiles (state, type, id);
CREATE INDEX md_state_type__id ON demo."md_applicationfiles" (state,type,id);
