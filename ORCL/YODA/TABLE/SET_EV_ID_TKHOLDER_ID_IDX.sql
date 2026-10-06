-- dmap_object_gen_tag : type : index name : set_ev_id_tkholder_id_idx
set search_path = yoda,oracle,dmap_extension,public;
create index set_ev_id_tkholder_id_idx on sporting_event_ticket (sporting_event_id, ticketholder_id, '');
CREATE INDEX "YODA"."SET_EV_ID_TKHOLDER_ID_IDX" ON "YODA"."SPORTING_EVENT_TICKET" ("SPORTING_EVENT_ID", "TICKETHOLDER_ID", '') 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
