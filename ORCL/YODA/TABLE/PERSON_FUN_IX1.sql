-- dmap_object_gen_tag : type : index name : person_fun_ix1
set search_path = yoda,oracle,dmap_extension,public;
create index person_fun_ix1 on person ((lower(first_name)||' '||lower(last_name)));
CREATE INDEX "YODA"."PERSON_FUN_IX1" ON "YODA"."PERSON" (LOWER("FIRST_NAME")||' '||LOWER("LAST_NAME")) 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
