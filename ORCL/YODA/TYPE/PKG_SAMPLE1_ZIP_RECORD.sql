-- DMAP_OBJECT_GEN_TAG : TYPE : EDITIONABLE NAME : pkg_sample1_zip_record
SET search_path = yoda,oracle,dmap_extension,public;

CREATE TYPE pkg_sample1_zip_record AS (
zip   varchar(5),
        city  varchar(25),
        state varchar(2)

);
