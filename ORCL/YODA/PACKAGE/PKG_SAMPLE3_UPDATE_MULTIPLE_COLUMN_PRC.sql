create or replace procedure yoda.pkg_sample3_update_multiple_column_prc (id numeric) as $body$
declare
-- pgv moved types start
-- pgv moved types end
begin 

/* dmap converted statement start */
-- package does not have global variables
--dmap conversion comment: gtt declaration added
update sample_user_action ca
set(
ca.gross_receipt_factor_amt,
ca.net_receipt_factor_amt,
ca.receipt_symbol,
ca.receipt_asset_id,
ca.sample_user_action_type_id,
ca.sample_user_action_class_id,
ca.last_chg_user_nm
) =
(
select gross_receipt_factor_amt,
net_receipt_factor_amt,
receipt_symbol,
receipt_asset_id,
sample_user_action_type_id,
sample_user_action_class_id,
last_chg_user_nm
from temp_sample_user_action_bkp
where ex_dt = ca.ex_dt and
load_type_cd = 'U' and
data_source_id = ca.data_source_id and
ca_asset_id = ca.ca_asset_id and
ex_dt = ca.ex_dt and
processing_seq_num = ca.processing_seq_num
)
where rowid in (
select md5(cast(ca.ctid as text)) from temp_sample_user_action_bkp tca,
sample_user_action ca
where tca.ex_dt = ca.ex_dt and
tca.load_type_cd = 'U' and
tca.data_source_id = ca.data_source_id and
tca.ca_asset_id = ca.ca_asset_id and
tca.ex_dt = ca.ex_dt and
tca.processing_seq_num = ca.processing_seq_num and (
coalesce(tca.gross_receipt_factor_amt, -1) != coalesce(ca.gross_receipt_factor_amt, -1) or
coalesce(tca.net_receipt_factor_amt, -1) != coalesce(ca.net_receipt_factor_amt, -1) or
coalesce(tca.receipt_symbol, '~') != coalesce( ca.receipt_symbol, '~') or
coalesce(tca.receipt_asset_id, -1) != coalesce(ca.receipt_asset_id, -1) or
coalesce(tca.sample_user_action_type_id, -1) != coalesce(ca.sample_user_action_type_id, -1) or
coalesce(tca.sample_user_action_class_id, -1) != coalesce(ca.sample_user_action_class_id, -1)
)
);/* dmap converted statement end */end;
$body$
language plpgsql
;
