-- dmap_object_gen_tag : type : materialized view name : site_detail_mv
set search_path = demo,oracle,dmap_extension,public;
create materialized view site_detail_mv as
select st.code                                                              sitecode,
o.name                                                               ou,
pg.name                                                              groupname,
t.name                                                               vat_region,
l1.locname                                                           store_stockpoint,
l2.locname                                                           transit_stockpoint,
a.name                                                               master_allocation_name,
p.name                                                               local_policy_name,
pa.name                                                              promo_allocation_name,
dx.lastsynctime
from demo.admsite st
left outer join demo.admou o on (st.admou_code = o.code)
left outer join demo.admcmptax t on (st.psite_admcmptax_code = t.code)
left outer join demo.psite_group pg on (st.psite_group_code = pg.code)
left outer join demo.psite_localpolicy p on (st.psite_localpolicy_code = p.code)
left outer join demo.psite_allocation a on (st.psite_allocation_code = a.code)
left outer join demo.invloc l1 on (st.store_loccode = l1.loccode)
left outer join demo.invloc l2 on (st.psite_transit_loccode = l2.loccode)
left outer join demo.promo_allocation pa on (st.psite_promo_allocation_code = pa.code)
left outer join (  select dxr.sendercuid, max(dxr.createdon) lastsynctime
from demo.dxreceive dxr
group by dxr.sendercuid) dx on (st.psite_initial = dx.sendercuid);
