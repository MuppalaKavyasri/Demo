create or replace  function  demo."cra_ctm_identify_sectors"  (lv_docmst_id numeric,lv_doc_type varchar) returns varchar as $body$
declare
lv_ownpresent varchar(1):='N';
lv_sectordetails varchar(1000);
lv_tempsectordetails varchar(100);
lv_tempsectfrom varchar(3);
lv_tempsectto varchar(3);
lv_seq numeric(3):=1;
c1 cursor for
select *
from
(select
case
when trim(both carleg.dep_utc_var_ind) = '-' then
(to_timestamp(trunc(coalesce(coalesce(carleg.act_dep_date,carleg.est_dep_date),bkg.dep_date))||' '||lpad(coalesce(coalesce(carleg.atd_hh::text, carleg.etd_hh), 0::text),2,'0')||':'||lpad(coalesce(coalesce(carleg.atd_mi::text, carleg.etd_mi), 0::text),2,'0'),'DD-MM-YY HH24:MI') + (numtodsinterval(coalesce(carleg.dep_utc_var_hh,0),'HOUR')+numtodsinterval(coalesce(carleg.dep_utc_var_mi,0),'MINUTE')))
else
(to_timestamp(trunc(coalesce(coalesce(carleg.act_dep_date,carleg.est_dep_date),bkg.dep_date))||' '||lpad(coalesce(coalesce(carleg.atd_hh::text, carleg.etd_hh), 0::text),2,'0')||':'||lpad(coalesce(coalesce(carleg.atd_mi::text, carleg.etd_mi), 0::text),2,'0'),'DD-MM-YY HH24:MI') - (numtodsinterval(coalesce(carleg.dep_utc_var_hh,0),'HOUR')+numtodsinterval(coalesce(carleg.dep_utc_var_mi,0),'MINUTE')))
end as first_dep_date_utc,
bkg.docbkg_id,bkg.seg_dep,bkg.seg_arr,bkg.car_code,bkg.truck_typ,
case when bkg.car_code in (select cod.cod_val from mst_ownr.mst_codeval_vw cod where cod.cod_name='ACC_FLOWN_CAR_CODES')
then 'OWN' else 'OAL' end as sector_type,
bkg.dep_date,
row_number() over () as row_num
from cra_ownr.cra_bkg bkg
left outer join sch_ownr.sch_carleg carleg on (bkg.car_code = carleg.car_code and bkg.car_num = carleg.car_num and bkg.dep_date = carleg.dep_date and bkg.seg_dep = carleg.leg_dep)
where -- bkg.cncl_ind != 'Y'
coalesce(carleg.exp_ind,'N') != 'Y' and coalesce(carleg.opr_sts_code, 'A') != 'Cancelled' -- bkg.legseg_id = carseg.legseg_id
-- and carseg.leg_id = carleg.leg_id
and bkg.docmst_id = lv_docmst_id
) q  order by dep_date,first_dep_date_utc asc;
begin
/* dmap converted statement start */
for i in c1 loop
--dbms_output.put_line('INSIDE FOR LOOP'|| i.sector_type);
if lv_doc_type ='OWN' and lv_seq=1 and sector_type='OAL' then
lv_sectordetails:=  concat(i.seg_dep, '-' , i.seg_dep , '-' , i.car_code) ;/* dmap converted statement end */
end if;
if lv_ownpresent='N' and i.sector_type='OWN' then
lv_ownpresent:='Y';
lv_tempsectfrom:=i.seg_dep;
end if;
if i.sector_type='OWN' then
lv_tempsectto:=i.seg_arr;
end if;/* dmap converted statement start */
if lv_ownpresent='Y' and i.sector_type='OAL' then
lv_tempsectordetails:=  concat(lv_tempsectfrom, '-' , lv_tempsectto , '-' , i.car_code) ;/* dmap converted statement end *//* dmap converted statement start */
if lv_sectordetails!= 'NULL' then
lv_sectordetails:=  concat(lv_sectordetails, ',' , lv_tempsectordetails) ;/* dmap converted statement end */
else
lv_sectordetails:= lv_tempsectordetails;
lv_ownpresent:='N';
end if;
end if;
lv_seq:= lv_seq+1;
end loop;/* dmap converted statement start */
perform dbms_output.put_line( concat('DEFAULT LV_sectorDetails  ', lv_sectordetails)) ;/* dmap converted statement end *//* dmap converted statement start */
if lv_sectordetails!='NULL' then
perform dbms_output.put_line( concat('LV_sectorDetails  ', lv_sectordetails)) ;/* dmap converted statement end */
end if;
return lv_sectordetails;end;
--dmap converted function completed
$body$
language plpgsql
stable;
