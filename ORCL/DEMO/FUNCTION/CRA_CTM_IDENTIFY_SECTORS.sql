CREATE OR REPLACE NONEDITIONABLE FUNCTION "DEMO"."CRA_CTM_IDENTIFY_SECTORS" (lv_docmst_id in number,lv_DOC_TYPE in VARCHAR2) RETURN varchar2 as
-- PGV moved types start

-- PGV moved types end

LV_ownPresent VARCHAR2(1):='N';
LV_sectorDetails VARCHAR2(1000);
LV_tempSectorDetails VARCHAR2(100);
LV_tempSectFrom VARCHAR2(3);
LV_tempSectTo VARCHAR2(3);
LV_seq number(3):=1;
CURSOR C1 IS
           select *
           from
        (SELECT
        CASE
        WHEN TRIM(carleg.DEP_UTC_VAR_IND) = '-' THEN
        (TO_TIMESTAMP(TRUNC(NVL(nvl(carleg.act_dep_date,carleg.est_dep_date),bkg.dep_date))||' '||LPAD(NVL(NVL(carleg.atd_hh,carleg.etd_hh),0),2,'0')||':'||LPAD(NVL(NVL(carleg.ATD_MI,carleg.ETD_MI),0),2,'0'),'DD-MM-YY HH24:MI') + (numtodsinterval(NVL(carleg.DEP_UTC_VAR_HH,0),'HOUR')+numtodsinterval(NVL(carleg.DEP_UTC_VAR_MI,0),'MINUTE')))
        ELSE
        (TO_TIMESTAMP(TRUNC(NVL(nvl(carleg.act_dep_date,carleg.est_dep_date),bkg.dep_date))||' '||LPAD(NVL(NVL(carleg.atd_hh,carleg.etd_hh),0),2,'0')||':'||LPAD(NVL(NVL(carleg.ATD_MI,carleg.ETD_MI),0),2,'0'),'DD-MM-YY HH24:MI') - (numtodsinterval(NVL(carleg.DEP_UTC_VAR_HH,0),'HOUR')+numtodsinterval(NVL(carleg.DEP_UTC_VAR_MI,0),'MINUTE')))
        END AS FIRST_DEP_DATE_UTC,
        bkg.docbkg_id,bkg.seg_dep,bkg.seg_arr,bkg.car_code,BKG.truck_typ,
        case when bkg.car_code in(select cod.cod_val from MST_OWNR.mst_codeval_vw cod where cod.cod_name='ACC_FLOWN_CAR_CODES')
        then 'OWN' else 'OAL' end as sector_type,
        bkg.dep_date,
        rownum as row_num
        FROM
        cra_ownr.cra_bkg bkg,
        sch_ownr.sch_carleg carleg
        -- sch_ownr.sch_carlegseg carseg
        WHERE
        -- bkg.CNCL_IND != 'Y'
        bkg.CAR_CODE = carleg.CAR_CODE(+)
        AND bkg.CAR_NUM = carleg.CAR_NUM(+)
        AND bkg.DEP_DATE = carleg.DEP_DATE(+)
        AND bkg.SEG_DEP = carleg.LEG_DEP(+)
        AND NVL(carleg.EXP_IND,'N') != 'Y'
        AND NVL(carleg.OPR_STS_CODE, 'A') != 'Cancelled'
        -- bkg.legseg_id = carseg.legseg_id
        -- and carseg.leg_id = carleg.leg_id
        AND bkg.docmst_id = lv_docmst_id
        ) q  order by dep_date,FIRST_DEP_DATE_UTC ASC;
    BEGIN
        FOR I IN C1 LOOP
            --dbms_output.put_line('INSIDE FOR LOOP'|| I.sector_type);
            IF lv_DOC_TYPE ='OWN' AND LV_seq=1 AND sector_type='OAL' THEN
                LV_sectorDetails:= I.SEG_DEP || '-' ||  I.SEG_DEP || '-' || I.CAR_CODE;
            END IF;
            IF LV_ownPresent='N' AND I.sector_type='OWN' THEN
                LV_ownPresent:='Y';
                LV_tempSectFrom:=I.SEG_DEP;
            END IF;
            IF I.sector_type='OWN' THEN
                LV_tempSectTo:=I.SEG_ARR;
            END IF;
            IF LV_ownPresent='Y' AND I.sector_type='OAL' THEN
                LV_tempSectorDetails:= LV_tempSectFrom || '-' ||  LV_tempSectTo || '-' || I.CAR_CODE;
                IF LV_sectorDetails!= 'NULL' THEN
                    LV_sectorDetails:= LV_sectorDetails || ',' || LV_tempSectorDetails;
                ELSE
                    LV_sectorDetails:= LV_tempSectorDetails;
                LV_ownPresent:='N';
                END IF;
            END IF;
            LV_seq:= LV_seq+1;
       END LOOP;
       dbms_output.put_line('DEFAULT LV_sectorDetails  '||LV_sectorDetails);
       IF LV_sectorDetails!='NULL' THEN
            dbms_output.put_line('LV_sectorDetails  '||LV_sectorDetails);
       END IF;
    return LV_sectorDetails;
    END;

/
--Source_DDLS

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "DEMO"."CRA_CTM_IDENTIFY_SECTORS" (lv_docmst_id in number,lv_DOC_TYPE in VARCHAR2) RETURN varchar2 as
-- PGV moved types start

-- PGV moved types end

LV_ownPresent VARCHAR2(1):='N';
LV_sectorDetails VARCHAR2(1000);
LV_tempSectorDetails VARCHAR2(100);
LV_tempSectFrom VARCHAR2(3);
LV_tempSectTo VARCHAR2(3);
LV_seq number(3):=1;
CURSOR C1 IS
           select *
           from
        (SELECT
        CASE
        WHEN TRIM(carleg.DEP_UTC_VAR_IND) = '-' THEN
        (TO_TIMESTAMP(TRUNC(NVL(nvl(carleg.act_dep_date,carleg.est_dep_date),bkg.dep_date))||' '||LPAD(NVL(NVL(carleg.atd_hh,carleg.etd_hh),0),2,'0')||':'||LPAD(NVL(NVL(carleg.ATD_MI,carleg.ETD_MI),0),2,'0'),'DD-MM-YY HH24:MI') + (numtodsinterval(NVL(carleg.DEP_UTC_VAR_HH,0),'HOUR')+numtodsinterval(NVL(carleg.DEP_UTC_VAR_MI,0),'MINUTE')))
        ELSE
        (TO_TIMESTAMP(TRUNC(NVL(nvl(carleg.act_dep_date,carleg.est_dep_date),bkg.dep_date))||' '||LPAD(NVL(NVL(carleg.atd_hh,carleg.etd_hh),0),2,'0')||':'||LPAD(NVL(NVL(carleg.ATD_MI,carleg.ETD_MI),0),2,'0'),'DD-MM-YY HH24:MI') - (numtodsinterval(NVL(carleg.DEP_UTC_VAR_HH,0),'HOUR')+numtodsinterval(NVL(carleg.DEP_UTC_VAR_MI,0),'MINUTE')))
        END AS FIRST_DEP_DATE_UTC,
        bkg.docbkg_id,bkg.seg_dep,bkg.seg_arr,bkg.car_code,BKG.truck_typ,
        case when bkg.car_code in(select cod.cod_val from MST_OWNR.mst_codeval_vw cod where cod.cod_name='ACC_FLOWN_CAR_CODES')
        then 'OWN' else 'OAL' end as sector_type,
        bkg.dep_date,
        rownum as row_num
        FROM
        cra_ownr.cra_bkg bkg,
        sch_ownr.sch_carleg carleg
        -- sch_ownr.sch_carlegseg carseg
        WHERE
        -- bkg.CNCL_IND != 'Y'
        bkg.CAR_CODE = carleg.CAR_CODE(+)
        AND bkg.CAR_NUM = carleg.CAR_NUM(+)
        AND bkg.DEP_DATE = carleg.DEP_DATE(+)
        AND bkg.SEG_DEP = carleg.LEG_DEP(+)
        AND NVL(carleg.EXP_IND,'N') != 'Y'
        AND NVL(carleg.OPR_STS_CODE, 'A') != 'Cancelled'
        -- bkg.legseg_id = carseg.legseg_id
        -- and carseg.leg_id = carleg.leg_id
        AND bkg.docmst_id = lv_docmst_id
        ) q  order by dep_date,FIRST_DEP_DATE_UTC ASC;
    BEGIN
        FOR I IN C1 LOOP
            --dbms_output.put_line('INSIDE FOR LOOP'|| I.sector_type);
            IF lv_DOC_TYPE ='OWN' AND LV_seq=1 AND sector_type='OAL' THEN
                LV_sectorDetails:= I.SEG_DEP || '-' ||  I.SEG_DEP || '-' || I.CAR_CODE;
            END IF;
            IF LV_ownPresent='N' AND I.sector_type='OWN' THEN
                LV_ownPresent:='Y';
                LV_tempSectFrom:=I.SEG_DEP;
            END IF;
            IF I.sector_type='OWN' THEN
                LV_tempSectTo:=I.SEG_ARR;
            END IF;
            IF LV_ownPresent='Y' AND I.sector_type='OAL' THEN
                LV_tempSectorDetails:= LV_tempSectFrom || '-' ||  LV_tempSectTo || '-' || I.CAR_CODE;
                IF LV_sectorDetails!= 'NULL' THEN
                    LV_sectorDetails:= LV_sectorDetails || ',' || LV_tempSectorDetails;
                ELSE
                    LV_sectorDetails:= LV_tempSectorDetails;
                LV_ownPresent:='N';
                END IF;
            END IF;
            LV_seq:= LV_seq+1;
       END LOOP;
       dbms_output.put_line('DEFAULT LV_sectorDetails  '||LV_sectorDetails);
       IF LV_sectorDetails!='NULL' THEN
            dbms_output.put_line('LV_sectorDetails  '||LV_sectorDetails);
       END IF;
    return LV_sectorDetails;
    END;

/
