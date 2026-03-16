CREATE OR REPLACE NONEDITIONABLE PACKAGE "DEMO"."SYS_CONSTANTS_PKG" IS
/**
* System module - global constants.
* @headcom
*/


/** TABLE size for bulk collect */
c_bulk_size CONSTANT BINARY_INTEGER := 100000;

--Yes/no flags
/** Yes/No char flags - yes */
c_yes                          CONSTANT VARCHAR2(1) := 'Y';
/** Yes/No char flags - no */
c_no                           CONSTANT VARCHAR2(1) := 'N';

--ON/OFF switch
/** ON/OFF switch - ON */
c_switch_on                    CONSTANT VARCHAR2(3) := 'ON';
/** ON/OFF switch - OFF */
c_switch_off                   CONSTANT VARCHAR2(3) := 'OFF';


-- audit log severity types
c_severity_info                CONSTANT VARCHAR2(1) := 'I';
c_severity_warning             CONSTANT VARCHAR2(1) := 'W';
c_severity_alarm               CONSTANT VARCHAR2(1) := 'A';


--System calendars - type of days
/** Calendars - working type of day*/
c_cal_day_type_working         CONSTANT sys_calendar_day.day_type%TYPE := 'W';
/** Calendars - nonworking type of day*/
c_cal_day_type_nonworking      CONSTANT sys_calendar_day.day_type%TYPE := 'N';

--Logs types
/** Log types - ERROR */
c_log_type_error               CONSTANT sys_log.log_type%TYPE := 'ERROR';
/** Log types - WARN */
c_log_type_warn                CONSTANT sys_log.log_type%TYPE := 'WARN';
/** Log types - INFO */
c_log_type_info                CONSTANT sys_log.log_type%TYPE := 'INFO';
/** Log types - DEBUG */
c_log_type_debug               CONSTANT sys_log.log_type%TYPE := 'DEBUG';

/** Debug area - All */
c_debug_area_all               CONSTANT VARCHAR2(100) := 'ALL';
/** Debug area - Scheduler */
c_debug_area_scheduler         CONSTANT VARCHAR2(100) := 'SCHEDULER';

--Constants to be returned by API procedures (DEPRECATED)
/** Return result - OK */
c_result_ok                    CONSTANT INTEGER := 0;
/** Return result - ERROR */
c_result_error                 CONSTANT INTEGER := -1;
/** Return result - OK WITH INFO */
c_result_info_ok               CONSTANT INTEGER := 1;

--OK constant to be returned by API procedures
c_result_code_ok               CONSTANT sys_exception.result_code%TYPE := 'OK';


--ISO language codes
/** Language - English */
c_lang_english                 CONSTANT sys_language.code%TYPE := 'en';
/** Language - German */
c_lang_german                  CONSTANT sys_language.code%TYPE := 'de';
/** Language - French */
c_lang_french                  CONSTANT sys_language.code%TYPE := 'fr';
/** Language - Slovak */
c_lang_slovak                  CONSTANT sys_language.code%TYPE := 'sk';
/** Language - Czech */
c_lang_czech                   CONSTANT sys_language.code%TYPE := 'cs';

--APPLICATION ERRORS: interval [-20499, -20000]
--note: NACHA specific errors are defined in NACHA_CONSTANTS_PKG (interval [-20299, -20200])

/**Architectural exception [$1;$2;$3;$4;$5;$6;$7;$8;$9].*/
c_ex_architectural             CONSTANT sys_log.err_code%TYPE := -20000;
/**No such system parameter found. [$1;$2]*/
c_ex_no_such_sys_param         CONSTANT sys_log.err_code%TYPE := -20001;
/**No such process path/unit parameter found [$1;$2].*/
c_ex_no_such_pp_pu_param       CONSTANT sys_log.err_code%TYPE := -20002;
/**No such process path parameter defined [$1;$2].*/
c_ex_no_such_pp_param_def      CONSTANT sys_log.err_code%TYPE := -20003;
/**No such process step instance property defined [$1;$2].*/
c_ex_no_such_psi_property_def  CONSTANT sys_log.err_code%TYPE := -20004;
/**Error while trying to get lock $1, lock returned $2.*/
c_ex_cannot_get_lock           CONSTANT sys_log.err_code%TYPE := -20005;
/**This input channel instance cannot go on. All files to be loaded have failed.*/
c_ex_input_object_empty        CONSTANT sys_log.err_code%TYPE := -20007;
/**Processing of this object has finished. All its trans/batches have been distributed to new objects or put to STE queues.*/
c_ex_process_group_empty       CONSTANT sys_log.err_code%TYPE := -20008;
/**User $1 has manually broken run of this process step instace.*/
c_ex_break_psi_to_err_info     CONSTANT sys_log.err_code%TYPE := -20009;
/**Error while breaking process step instance $1 by user $2. Error code: $3. Error message: $4.*/
c_ex_cannot_break_psi_to_err   CONSTANT sys_log.err_code%TYPE := -20010;
/**Partition for table $1 : a key $2 higher than $3 exists.*/
c_ex_part_key_higher_info      CONSTANT sys_log.err_code%TYPE := -20011;
/**Partition creation for table $1 failed for processing object $1. Error code: $3. Error message: $4.*/
c_ex_part_creation_failed      CONSTANT sys_log.err_code%TYPE := -20012;
/**Exchange table indexes creation failed for destination table $1 and exchange table $2. Error code: $3. Error message: $4.*/
c_ex_part_cr_exch_ind_failed   CONSTANT sys_log.err_code%TYPE := -20013;
/**Exchange table creation failed for destination table $1, ident $2. Error code: $3. Error message: $4.*/
c_ex_part_cr_exch_tab_failed   CONSTANT sys_log.err_code%TYPE := -20014;
/**Creation and exchange partition failed for processing object $1, destination table $2, exchange table $3. Error code: $4. Error message: $5.*/
c_ex_part_cr_and_exchng_failed CONSTANT sys_log.err_code%TYPE := -20015;
/**Error while dropping exchange table $1. Error code: $2. Error message: $3.*/
c_ex_part_cannot_drop_exch_tab CONSTANT sys_log.err_code%TYPE := -20016;
/**No confirmation file name extension defined for input channel id $1.*/
c_ex_ich_no_cnf_extension_def  CONSTANT sys_log.err_code%TYPE := -20017;
/**Invalid external table name for processing object id $1, semantics $2.*/
c_ex_invalid_ext_tab_name      CONSTANT sys_log.err_code%TYPE := -20018;
/**Error while dropping table $1. Error code: $2. Error message: $3.*/
c_ex_cannot_drop_table         CONSTANT sys_log.err_code%TYPE := -20019;
/**Error while deleting file $1 from directory $2. Error code: $3. Error message: $4.*/
c_ex_cannot_delete_file        CONSTANT sys_log.err_code%TYPE := -20020;
/**Error while creating DDL for external table $1. Error code: $2. Error message: $3.*/
c_ex_ext_tab_ddl_failed        CONSTANT sys_log.err_code%TYPE := -20021;
/**Error during auto creation of all processing objects for first step type $1. Error code: $2. Error message: $3.*/
c_ex_create_proc_obj_auto      CONSTANT sys_log.err_code%TYPE := -20029;
/**Error during manual creation of processing object for process unit $1, logical file $2. Error code: $3. Error message: $4.*/
c_ex_create_proc_obj_manual    CONSTANT sys_log.err_code%TYPE := -20030;
/**Error during creation of processing object for process unit $1, scheduler rule $2, logical file $3. Error code: $4. Error message: $5.*/
c_ex_create_pu_proc_obj        CONSTANT sys_log.err_code%TYPE := -20031;
/**Error during call of logical files creation procedure for process unit $1. Error code: $2. Error message: $3.*/
c_ex_call_pu_create_lf         CONSTANT sys_log.err_code%TYPE := -20032;
/**Error during manual creation of logical files of process unit $1. Error code: $2. Error message: $3.*/
c_ex_create_lfs_manual         CONSTANT sys_log.err_code%TYPE := -20033;
/**Error during call of processing object creation procedure of process unit $1, logical file $2. Error code: $3. Error message: $4.*/
c_ex_call_pu_create_po         CONSTANT sys_log.err_code%TYPE := -20034;
/**Error during employing DB system process $1. Error code: $2. Error message: $3.*/
c_ex_employ_db_process         CONSTANT sys_log.err_code%TYPE := -20035;
/**Error during evaluation of run condition for process unit $1. Error code: $2. Error message: $3.*/
c_ex_eval_pu_run_condition     CONSTANT sys_log.err_code%TYPE := -20036;
/**Error during evaluation of scheduler rule for processing object $1, process unit $2, run mode $3, requested priority $4. Error code: $5. Error message: $6.*/
c_ex_eval_pu_scheduler_rule    CONSTANT sys_log.err_code%TYPE := -20037;
/**Error during finding work for system process $1. Error code: $2. Error message: $3.*/
c_ex_get_psi                   CONSTANT sys_log.err_code%TYPE := -20038;
/**Error during initialization of run of processing object $1 by system process $2. Error code: $3. Error message: $4.*/
c_ex_run_next_pu               CONSTANT sys_log.err_code%TYPE := -20039;
/**Error during planning further run of processing object $1. Error code: $2. Error message: $3.*/
c_ex_plan_processing_object    CONSTANT sys_log.err_code%TYPE := -20040;
/**Set to error by scheduler - assigned process $1 was not executing this step.*/
c_ex_psi_runs_process_not      CONSTANT sys_log.err_code%TYPE := -20041;
/**Error during creation of external table $1 based on file $2. Error code: $3. Error message: $4.*/
c_ex_cannot_create_ext_tab     CONSTANT sys_log.err_code%TYPE := -20042;
/**Error during loading from external table $1, processing object $2. Error code: $3. Error message: $4.*/
c_ex_cannot_load_ext_tab       CONSTANT sys_log.err_code%TYPE := -20043;
/**Process step instance run error. Error code: $1. Error message: $2.*/
c_ex_psi_run_error             CONSTANT sys_log.err_code%TYPE := -20044;
/**Error during getting external table data file name for processing object $1 and semantic code $2. Error code: $3. Error message: $4.*/
c_ex_cannot_get_ext_tab_fname  CONSTANT sys_log.err_code%TYPE := -20045;
/**Error during evaluation of run condition for manual activity $1. Error code: $2. Error message: $3.*/
c_ex_eval_ma_run_condition     CONSTANT sys_log.err_code%TYPE := -20046;
/**Manual activity $1 error. Object ID $2, type $3. Error code: $4. Error message: $5.*/
c_ex_ma_run_error              CONSTANT sys_log.err_code%TYPE := -20047;
/**No such manual activity defined [$1;$2;$3].*/
c_ex_no_such_man_act_defined   CONSTANT sys_log.err_code%TYPE := -20048;
/**Bad 4 eyes action. [$1].*/
c_ex_bad_4eyes_action          CONSTANT sys_log.err_code%TYPE := -20049;
/**Error during start of manual DB process for processing object $1. Error code: $2. Error message: $3.*/
c_ex_man_db_proc_start_failed  CONSTANT sys_log.err_code%TYPE := -20050;
/**Error during run of manual DB process $1 for processing object $2. Error code: $3. Error message: $4.*/
c_ex_man_db_proc_run_failed    CONSTANT sys_log.err_code%TYPE := -20051;
/**Error during finding work for manual system process $1 on processing object $2. Error code: $3. Error message: $4.*/
c_ex_get_psi_for_man_process   CONSTANT sys_log.err_code%TYPE := -20052;
/**Error during initialization of manual run of processing object $1. Error code: $2. Error message: $3.*/
c_ex_run_next_pu_manual        CONSTANT sys_log.err_code%TYPE := -20053;
/**File $1 not found in DB directory $2.*/
c_ex_file_not_found            CONSTANT sys_log.err_code%TYPE := -20054;
/**User right violated [$1;$2].*/
c_ex_user_right_violated       CONSTANT sys_log.err_code%TYPE := -20055;
/**This manual activity does not support object type $1.*/
c_ex_ma_unsupported_obj_type   CONSTANT sys_log.err_code%TYPE := -20056;
/**Incorrect booking, DR not equal to CR.*/
c_ex_booking_dr_cr_unequal     CONSTANT sys_log.err_code%TYPE := -20057;
/**No booking entries generated.*/
c_ex_booking_no_entries        CONSTANT sys_log.err_code%TYPE := -20058;
/**Corresponding feedback record not found for this feedback file.*/
c_ex_tfb_record_not_found      CONSTANT sys_log.err_code%TYPE := -20059;
/**Filtering response C-records miscount. Stated: $1, really found: $2.*/
c_ex_flt_c_records_miscount    CONSTANT sys_log.err_code%TYPE := -20060;
/**This unit is not designed to be automatically instantiated by scheduler.*/
c_ex_cannot_inst_by_scheduler  CONSTANT sys_log.err_code%TYPE := -20061;
/**Cannot count loaded values. Query: $1*/
c_ex_cannot_count_loaded_data  CONSTANT sys_log.err_code%TYPE := -20062;
/**ATC request (ID: $1, Queue ID: $2) not in the expected queue ID: $3.*/
c_ex_atc_req_not_in_ma_queue   CONSTANT sys_log.err_code%TYPE := -20063;
/**FLT request (ID: $1, Queue ID: $2) not in the expected queue ID: $3.*/
c_ex_flt_req_not_in_ma_queue   CONSTANT sys_log.err_code%TYPE := -20064;
/**Technical account (template ID: $1) not found for batch/trans ID: $2.*/
c_ex_bk_tech_acc_not_found     CONSTANT sys_log.err_code%TYPE := -20067;
/**FRC request (ID: $1, Queue ID: $2) not in the expected queue ID: $3.*/
c_ex_frc_req_not_in_ma_queue   CONSTANT sys_log.err_code%TYPE := -20068;
/**ATC error number $1 for $2 is not defined in the code table.*/
c_ex_atc_err_no_undefined      CONSTANT sys_log.err_code%TYPE := -20069;
/**Transaction ID $1 not in a WAITING queue.*/
c_ex_tran_not_in_waiting_queue CONSTANT sys_log.err_code%TYPE := -20070;
/**Empty reason code in transaction(s) ID $1.*/
c_ex_empty_reason_code         CONSTANT sys_log.err_code%TYPE := -20071;
/**Current accounting date $1 differs from system date.*/
c_ex_curr_acc_day_diff         CONSTANT sys_log.err_code%TYPE := -20072;
/**DB-link communication failed (action: $1, error code: $2, error msg: $3)*/
c_ex_dblink_error              CONSTANT sys_log.err_code%TYPE := -20073;
/**At lease one message from MQ failed (failed/ignored/ok = $1/$2/$3) $4*/
c_ex_mq_msg_failed             CONSTANT sys_log.err_code%TYPE := -20074;
/**No zippped file name extension defined for input channel id $1.*/
c_ex_ich_no_zip_extension_def  CONSTANT sys_log.err_code%TYPE := -20075;
/**All loaded accounts do not have an IBAN filled.*/
c_ex_all_acc_not_have_iban     CONSTANT sys_log.err_code%TYPE := -20076;
/**COA message (GMA format) not matched (MQGW MSG ID=$1; RelRefKey=$2; OrgntrAppl=$3*/
c_ex_coa_gma_not_matched       CONSTANT sys_log.err_code%TYPE := -20077;
/**DSM message (GMA format) not matched (MQGW MSG ID=$1; RelRefKey=$2; OrgntrAppl=$3; MsgType=$4*/
c_ex_dsm_gma_not_matched       CONSTANT sys_log.err_code%TYPE := -20078;
/**Please check error logs of this instance.*/
c_ex_alert_error               CONSTANT sys_log.err_code%TYPE := -20079;
/**Failed-DSM message received (MQGW MSG ID=$1; RelRefKey=$2; OrgntrAppl=$3; MsgType=$4)*/
c_ex_failed_dsm_received       CONSTANT sys_log.err_code%TYPE := -20080;
/**COA message (FRC request) not matched (MQGW MSG ID=$1; RequestID=$2; MsgBody={$3}*/
c_ex_coa_frc_not_matched       CONSTANT sys_log.err_code%TYPE := -20081;
/**Transaction is scanned by other process*/
c_ex_scan_by_other_proc        CONSTANT sys_log.err_code%TYPE := -20082;
/**No such manual activity property found. [ActivityID=$1; Property=$2]*/
c_ex_no_such_ma_prop           CONSTANT sys_log.err_code%TYPE := -20084;
/**Invalid manual activity property value [ActivityID=$1; Property=$2; Value=$3]*/
c_ex_invalid_ma_property_value CONSTANT sys_log.err_code%TYPE := -20085;
/**All objects must be of the same type [TypeCount=$1; Type1=$2; Type2=$3]*/
c_ex_ma_mixed_types_found      CONSTANT sys_log.err_code%TYPE := -20086;
/**Unsupported internal parameter value [Param=$1; Value=$2]*/
c_ex_unsupported_par_value     CONSTANT sys_log.err_code%TYPE := -20087;
/**Process should be run on 1st day of each month. If you know what you do, use 'Continue' to go on.*/
c_ex_cbr_safety_check_error    CONSTANT sys_log.err_code%TYPE := -20088;
/**Unable to calculate working day [Date=$1; Offset=$2]*/
c_ex_working_day_calc_error    CONSTANT sys_log.err_code%TYPE := -20089;
/**Empty beneficiary account for CPty name $1*/
c_ex_clieop_empty_cpty_acc     CONSTANT sys_log.err_code%TYPE := -20090;
/**No such queue name $1*/
c_ex_no_such_queue_name        CONSTANT sys_log.err_code%TYPE := -20091;
/**Technical account (template ID: $1) not found for clearing partner ID: $2.*/
c_ex_clp_tech_acc_not_found    CONSTANT sys_log.err_code%TYPE := -20092;
/**Error loading file, loaded dubled batch/transaction*/
c_ex_dubled_entity             CONSTANT sys_log.err_code%TYPE := -20094;
/**Online step run error. Object ID: $1. Error code: $2. Error message: $3.*/
c_ex_online_ps_run_error       CONSTANT sys_log.err_code%TYPE := -20095;
/**Internal error - may be raised from GUI packages when used improperly */
c_ex_internal_error            CONSTANT sys_log.err_code%TYPE := -20096;
/**Unknown file format. File name: $1 */
c_ex_unknown_file_format       CONSTANT sys_log.err_code%TYPE := -20097;
/**Loading FX Rate record not valid. $1 */
c_ex_invalid_fx_rate           CONSTANT sys_log.err_code%TYPE := -20098;
/**Error during evaluation of check procedure for code table $1. Error code: $2. Error message: $3.*/
c_ex_eval_ctab_check_proc      CONSTANT sys_log.err_code%TYPE := -20099;
/**Bulk operation error, code $1, index $2 from total of $3 errors.*/
c_ex_bulk_error                CONSTANT sys_log.err_code%TYPE := -20100;
/**No distribution scheme found (partner id $2 does not support tx type $1)*/
c_ex_no_dist_scheme_found      CONSTANT sys_log.err_code%TYPE := -20101;
/**No valid EONIA daily rate found for some days between $1 and $2.*/
c_ex_eonia_dr_notfound         CONSTANT sys_log.err_code%TYPE := -20102;
/**IMAD creation failed for transaction $1. [IMAD = '$2', seq num = $3]*/
c_ex_fw_imad_creation_failed   CONSTANT sys_log.err_code%TYPE := -20106;
/**'Unsupported trn type $1 in tags {3600}{1510}. Expected: $2'*/
c_ex_fw_unsupported_tt         CONSTANT sys_log.err_code%TYPE := -20107;

--BUSINESS ERRORS PRESENTED TO USERS IN GUI: interval [-20999, -20500]
--note: don't create new business errors here. Use RESULT_CODE instead.

/**No valid scheduler rule found.*/
c_buserr_sched_rule_not_valid  CONSTANT sys_log.err_code%TYPE := -20500;
/**Run condition not fulfilled. Reason: $1*/
c_buserr_run_cond_not_valid    CONSTANT sys_log.err_code%TYPE := -20501;
/**No files to be processed found.*/
c_buserr_no_logical_files      CONSTANT sys_log.err_code%TYPE := -20502;
/**The unit is currently locked by system or another user that tries to run it.*/
c_buserr_proc_unit_locked      CONSTANT sys_log.err_code%TYPE := -20503;
/**No instance has been created.*/
c_buserr_instance_not_created  CONSTANT sys_log.err_code%TYPE := -20504;
/**Instance $1 is not in proper state to be run manually. Please, refresh your selection.*/
c_buserr_po_cannot_run_manual  CONSTANT sys_log.err_code%TYPE := -20514;
/**Instance $1 is not in proper state to be stopped running. Please, refresh your selection.*/
c_buserr_po_cannot_be_stopped  CONSTANT sys_log.err_code%TYPE := -20515;
/**Bad file - reason: $1*/
c_buserr_bad_file              CONSTANT sys_log.err_code%TYPE := -20518;
/**Record is not in proper status to perform this action.  Please, refresh your selection.*/
c_buserr_record_bad_status     CONSTANT sys_log.err_code%TYPE := -20528;
/**This role is already active or proposed.*/
c_buserr_role_used             CONSTANT sys_log.err_code%TYPE := -20529;
/**No data to be processed found.*/
c_buserr_no_data               CONSTANT sys_log.err_code%TYPE := -20532;
/**File with sequence number $1 is missing.*/
c_buserr_file_seq_no_missing   CONSTANT sys_log.err_code%TYPE := -20534;
/**Invalid value for structured remittance info.*/
c_buserr_invalid_rmt_inf_strd  CONSTANT sys_log.err_code%TYPE := -20536;
/**This BIC already exists*/
c_buserr_bic_exists            CONSTANT sys_log.err_code%TYPE := -20539;
/**Clearing partner with this name already exists*/
c_buserr_cl_partner_exists     CONSTANT sys_log.err_code%TYPE := -20540;
/**This clearing BIC already exists*/
c_buserr_cl_bic_exists         CONSTANT sys_log.err_code%TYPE := -20541;
/**This rule is already active or proposed.*/
c_buserr_rule_used             CONSTANT sys_log.err_code%TYPE := -20544;
/**No calendar available for exec date calculation.*/
c_buserr_no_calendar           CONSTANT sys_log.err_code%TYPE := -20549;
/**Cannot delete clearing partner, related routing table record found.*/
c_clp_valid_rule_found         CONSTANT sys_log.err_code%TYPE := -20554;
/**Cannot delete clearing partner, related technical account record found.*/
c_clp_valid_tacc_found         CONSTANT sys_log.err_code%TYPE := -20555;
/**Cannot resend, counterparty BIC $1 is not routable.*/
c_cannot_resend                CONSTANT sys_log.err_code%TYPE := -20556;
/**Incorrect file sequence */
c_buserr_incorrect_file_seq    CONSTANT sys_log.err_code%TYPE := -20558;
/**Obligor limit utilisation being modified by another process or user. Please try later.*/
c_buserr_ddolc_limit_no_lock   CONSTANT sys_log.err_code%TYPE := -20559;
/**Account $1 is already assigned to another valid Obligor limit.*/
c_buserr_ddolc_limit_acc_used  CONSTANT sys_log.err_code%TYPE := -20560;
/**Unable to delete limit until utilisation is zero.*/
c_buserr_ddolc_limit_unab_del  CONSTANT sys_log.err_code%TYPE := -20561;
/**No valid obligor limit found for IBAN $1.*/
c_buserr_ddolc_not_found_iban CONSTANT sys_log.err_code%TYPE := -20566;
/**Approval of Refusal is no longer allowed.*/
c_buserr_app_ref_not_allowed   CONSTANT sys_log.err_code%TYPE := -20568;
/**Approval not allowed. Refund Compensation amount must be re-calculated.*/
c_buserr_comp_amout_must_recal CONSTANT sys_log.err_code%TYPE := -20570;
/**Instance $1 is not in proper state to perform cancel. Please, refresh your selection.*/
c_buserr_po_cannot_cancel      CONSTANT sys_log.err_code%TYPE := -20572;
/**Instance $1 is not in proper state to perform continue. Please, refresh your selection.*/
c_buserr_po_cannot_continue    CONSTANT sys_log.err_code%TYPE := -20573;
/**No valid obligor limit found for clearing partner ID $1.*/
c_buserr_ddolc_not_found_clp  CONSTANT sys_log.err_code%TYPE := -20578;
/**No tx exists (ID $1)*/
c_buserr_no_tx_exists         CONSTANT sys_log.err_code%TYPE := -20579;
/**A collection is being processed against this mandate. Editing not allowed!*/
c_buserr_mand_cannot_edit     CONSTANT sys_log.err_code%TYPE := -20580;
/**Mapping for this <Country Code/National Id> pair already exists*/
c_buserr_country_natid_exists  CONSTANT sys_log.err_code%TYPE := -20582;
/**Invalid creditor scheme ID*/
c_buserr_inv_cred_scheme_id  CONSTANT sys_log.err_code%TYPE := -20583;
/**Routability check failed*/
c_buserr_routing_failed      CONSTANT sys_log.err_code%TYPE := -20588;
/**Clearing BIC $1 does not exists*/
c_buserr_cl_bic_not_exists     CONSTANT sys_log.err_code%TYPE := -20595;
/**Declared Settlement/due date $1 is in the past and exceeds allowed period [$2 working days].*/
c_buserr_sett_due_date_in_past CONSTANT sys_log.err_code%TYPE := -20604;
/** Expiry date is in the past.*/
c_buserr_exp_date_in_past      CONSTANT sys_log.err_code%TYPE := -20608;
/** File date should be greater than $1*/
c_buserr_file_date_is_old      CONSTANT sys_log.err_code%TYPE := -20611;
/** Sub-processes (instances) in error: $1 */
c_buserr_master_slaves_in_err  CONSTANT sys_log.err_code%TYPE := -20612;
/** Some previous instance(s) of $1 is in error*/
c_buserr_prev_process_in_err   CONSTANT sys_log.err_code%TYPE := -20613;
/** An interfering rule (ID $1) exists for this customer/account*/
c_buserr_dupl_rule_exists      CONSTANT sys_log.err_code%TYPE := -20616;
/** Failed to determine carded exchange rate.*/
c_buserr_card_xchgrate_failed  CONSTANT sys_log.err_code%TYPE := -20618;
/**Day $1 not found in $2 calendar. Please check setup of calendars.*/
c_buserr_no_calendar_day       CONSTANT sys_log.err_code%TYPE := -20622;
/** FX list is not complete, some rates are missing.*/
c_buserr_fx_list_not_complete  CONSTANT sys_log.err_code%TYPE := -20625;
/** FX list: $1. Missing rates for currencies: $2*/
c_buserr_fx_list_missing_curr  CONSTANT sys_log.err_code%TYPE := -20626;
/** Unrecognized MT message type of transaction ID $1 (XCT)*/
c_buserr_xct_empty_msg_type    CONSTANT sys_log.err_code%TYPE := -20628;
/**Profile with this name already exists*/
c_buserr_profile_exists        CONSTANT sys_log.err_code%TYPE := -20630;
/**Invalid intermediary account format (XCT)*/
c_buserr_invalid_acc_format    CONSTANT sys_log.err_code%TYPE := -20632;
/**Clearing partner for SEPA cannot be deleted*/
c_buserr_cl_partner_sepa_nodel CONSTANT sys_log.err_code%TYPE := -20634;
/**No clearing partner found for given BIC $1 account $2 and currency $3.*/
c_buserr_cl_partner_not_found  CONSTANT sys_log.err_code%TYPE := -20635;
/**Transaction not in authorization queue.*/
c_buserr_trn_not_in_auth_queue CONSTANT sys_log.err_code%TYPE := -20636;
/**Transaction not in a proper queue.*/
c_buserr_trn_not_in_prop_queue CONSTANT sys_log.err_code%TYPE := -20637;
/**Technical duplicate*/
c_buserr_technical_duplicate   CONSTANT sys_log.err_code%TYPE := -20638;
/**Service level SEPA possible only for EUR*/
c_buserr_sepa_only_for_eur     CONSTANT sys_log.err_code%TYPE := -20640;
/**Service level SEPA requires a creditor name*/
c_buserr_sepa_req_cred_name    CONSTANT sys_log.err_code%TYPE := -20641;
/**Invalid clearing system code in <PmtInf><CdtTrfTxInf><CdtrAgt><FinInstnId><ClrSysMmbId><ClrSysId><Cd>*/
c_buserr_clr_sys_code          CONSTANT sys_log.err_code%TYPE := -20643;
/**Ambiguous debtor account specification encountered*/
c_buserr_multiple_dbtr_acc     CONSTANT sys_log.err_code%TYPE := -20644;
/**Customer is being modified by another process or user. Please try later.*/
c_buserr_customer_no_lock      CONSTANT sys_log.err_code%TYPE := -20650;
/**Technical account found for given account template $1 name $2 entity $3 currency $4 and branch $5*/
c_buserr_tech_acc_exists       CONSTANT sys_log.err_code%TYPE := -20651;
/**Wrong input for element $1 and $2 - mutually exclusive entry on batch and transaction level.*/
c_buserr_mutually_exclsv_entry CONSTANT sys_log.err_code%TYPE := -20652;
/**No valid amount found with code ITBD or CLBD.*/
c_buserr_clp_bal_invalid_amt   CONSTANT sys_log.err_code%TYPE := -20654;
/**Clearing partner can''t be deleted when there is an AFT Agency Banking Partner Profile record related to it.*/
c_buserr_clp_aft_prof_exists   CONSTANT sys_log.err_code%TYPE := -20655;

-- REST error codes
-- java.io.EOFException
c_rest_eof                       CONSTANT sys_log.err_code%TYPE :=  -21001;
-- java.lang.IllegalArgumentException
c_rest_ilegal_argument           CONSTANT sys_log.err_code%TYPE :=  -21002;
-- com.cgi.rest.core.criteria.InvalidCriteriaException
c_rest_invalid_criteria          CONSTANT sys_log.err_code%TYPE :=  -21003;
-- com.cgi.rest.core.exception.JsonMappingExceptionMapper
c_rest_json_mapping              CONSTANT sys_log.err_code%TYPE :=  -21004;
-- com.cgi.rest.core.exception.JsonParseExceptionMapper
c_rest_json_parsing              CONSTANT sys_log.err_code%TYPE :=  -21005;
-- java.sql.SQLException
c_rest_sql                       CONSTANT sys_log.err_code%TYPE :=  -21006;
-- org.springframework.jdbc.UncategorizedSQLException
c_rest_uncategorized_sql         CONSTANT sys_log.err_code%TYPE :=  -21007;
-- com.cgi.rest.core.validation.ValidationErrorException
c_rest_validation_error          CONSTANT sys_log.err_code%TYPE :=  -21008;
-- com.cgi.rest.core.validation.ValidationException
c_rest_validation                CONSTANT sys_log.err_code%TYPE :=  -21009;


--INFORMATION/WARNING PRESENTED TO USERS IN GUI (only OK button): interval [1000, 1999]
/**Your change will take full effect after run of ''Refresh static data'' process.*/
c_info_refresh_static_data_mv  CONSTANT sys_log.err_code%TYPE := 1000;
/**Your change will take full effect after run of ''Refresh calendars'' process.*/
c_info_refresh_calendars_mv    CONSTANT sys_log.err_code%TYPE := 1001;
/**Table $1 populated by $2 data records*/
c_info_ich_loaded_data         CONSTANT sys_log.err_code%TYPE := 1002;
/**Feedback received.*/
c_info_tfb_received            CONSTANT sys_log.err_code%TYPE := 1010;
/**Current accounting date set to $1.*/
c_info_curr_acc_day_set        CONSTANT sys_log.err_code%TYPE := 1011;
/**File $1 removed to instance $2 by user $3.*/
c_info_file_removed            CONSTANT sys_log.err_code%TYPE := 1016;
/**Feedback timed out.*/
c_info_tfb_timeout             CONSTANT sys_log.err_code%TYPE := 1017;
/** Zero input file.*/
c_info_zero_input_file         CONSTANT sys_log.err_code%TYPE := 1020;
/** Transaction copy generated with ID $1.*/
c_info_tx_copy_generated       CONSTANT sys_log.err_code%TYPE := 1021;
/** Warning for SEPA creditor mandates GUI/WS*/
c_info_mand_warn               CONSTANT sys_log.err_code%TYPE := 1100;

--Queue reasons
/** Queue reason - wait for technical feedback*/
c_queue_reason_wait_for_tfb    CONSTANT VARCHAR2(3) := 'WFB';
/** Queue reason - technical feedback timed out*/
c_queue_reason_tfb_time_out    CONSTANT VARCHAR2(3) := 'FTO';
/** Queue reason - technical feedback negative reply*/
c_queue_reason_tfb_negative    CONSTANT VARCHAR2(3) := 'FNE';


--Technical feedback types
/** Technical feedback type - File Handler*/
c_tfb_type_fh                  CONSTANT sys_tech_feedback.tfb_type%TYPE := 'FH';
/** Technical feedback type - Status Information */
c_tfb_type_si                  CONSTANT sys_tech_feedback.tfb_type%TYPE := 'SI';
/** Technical feedback type - Technical Feedback */
c_tfb_type_tf                  CONSTANT sys_tech_feedback.tfb_type%TYPE := 'TF';
/** Technical feedback type - Customer Notification */
c_tfb_type_cn                  CONSTANT sys_tech_feedback.tfb_type%TYPE := 'CN';
/** Technical feedback type - MQ */
c_tfb_type_mq                  CONSTANT sys_tech_feedback.tfb_type%TYPE := 'MQ';

/** Technical feedback - direction of the data file being feedbacked - input*/
c_tfb_direction_input          CONSTANT sys_tech_feedback.direction%TYPE := 'I';
/** Technical feedback - direction of the data file being feedbacked - output*/
c_tfb_direction_output         CONSTANT sys_tech_feedback.direction%TYPE := 'O';

--Feedback statuses
/** Feedback status - waiting for generation*/
c_tfb_status_created           CONSTANT sys_tech_feedback.status%TYPE := 'C';
/** Feedback status - waiting for generation*/
c_tfb_status_waiting           CONSTANT sys_tech_feedback.status%TYPE := 'W';
/** Feedback status - being processed (generation running)*/
c_tfb_status_being_processed   CONSTANT sys_tech_feedback.status%TYPE := 'P';
/** Feedback status - sent to receiver*/
c_tfb_status_sent_to_receiver  CONSTANT sys_tech_feedback.status%TYPE := 'S';
/** Feedback status - reply received*/
c_tfb_status_reply_received    CONSTANT sys_tech_feedback.status%TYPE := 'R';
/** Feedback status - reply timeout*/
c_tfb_status_reply_timeout     CONSTANT sys_tech_feedback.status%TYPE := 'T';
/** Feedback status - reply timeout*/
c_tfb_status_handled_manually  CONSTANT sys_tech_feedback.status%TYPE := 'M';

--Technical feedback timeout parameters
/** Technical feedback timeout system parameter name - File Handler*/
c_sys_par_tfb_timeout_fh       CONSTANT adm_sys_parameter.name%TYPE := 'TECH_FEEDBACK_TIMEOUT_FH';
/** Technical feedback timeout system parameter name - Status Notification*/
c_sys_par_tfb_timeout_tf       CONSTANT adm_sys_parameter.name%TYPE := 'TECH_FEEDBACK_TIMEOUT_TF';

--MQ system parameters
c_sys_par_mq_app_id            CONSTANT adm_sys_parameter.name%TYPE := 'MQ_APP_ID';
/** System parameter name - MQ COA timeout*/
c_sys_par_mq_coa_timeout       CONSTANT adm_sys_parameter.name%TYPE := 'MQ_COA_TIMEOUT';
/** System parameter name - MQ GMA Originator application*/
c_sys_par_mq_gma_orig_appl     CONSTANT adm_sys_parameter.name%TYPE := 'MQ_GMA_ORIG_APPL';


/** System parameter name - Supervisor count proc node queues*/
c_sys_par_svisor_count_pnq     CONSTANT adm_sys_parameter.name%TYPE := 'SVISOR_COUNT_PNQ';
/** System parameter name - Supervisor count proc object instances*/
c_sys_par_svisor_count_poi     CONSTANT adm_sys_parameter.name%TYPE := 'SVISOR_COUNT_POI';
/** System parameter name - Supervisor count proc object instances consolidated*/
c_sys_par_svisor_count_poicons CONSTANT adm_sys_parameter.name%TYPE := 'SVISOR_COUNT_POICONS';
/** System parameter name - Supervisor count proc object instances by params*/
c_sys_par_svisor_count_pop     CONSTANT adm_sys_parameter.name%TYPE := 'SVISOR_COUNT_POP';
/** System parameter name - Supervisor count audit log*/
c_sys_par_svisor_count_aud     CONSTANT adm_sys_parameter.name%TYPE := 'SVISOR_COUNT_AUD';
/** System parameter name - Supervisor count specific source stats*/
c_sys_par_svisor_count_src     CONSTANT adm_sys_parameter.name%TYPE := 'SVISOR_COUNT_SRC';
/** System parameter name - Supervisor GUI refreshing period*/
c_sys_par_svisor_refresh_perd  CONSTANT adm_sys_parameter.name%TYPE := 'SVISOR_REFRESH_PERIOD';


--Technical feedback reply results
/** Technical feedback reply result - positive*/
c_tfb_result_positive          CONSTANT sys_tech_feedback.result%TYPE := 'P';
/** Technical feedback reply result - negative*/
c_tfb_result_negative          CONSTANT sys_tech_feedback.result%TYPE := 'N';


--Audit event groups
/** Audit event group - System*/
c_audg_system                  CONSTANT sys_audit_event_group.id%TYPE := 1;
/** Audit event group - Admin*/
c_audg_admin                   CONSTANT sys_audit_event_group.id%TYPE := 2;
/** Audit event group - Channels*/
c_audg_channels                CONSTANT sys_audit_event_group.id%TYPE := 3;
/** Audit event group - Busienss*/
c_audg_business                CONSTANT sys_audit_event_group.id%TYPE := 4;
/** Audit event group - Fedwire*/
c_audg_fedwire                 CONSTANT sys_audit_event_group.id%TYPE := 5;
/** Audit event group - GPI*/
c_audg_gpi                     CONSTANT sys_audit_event_group.id%TYPE := 6;
/** Audit event group - NACHA*/
c_audg_nacha                   CONSTANT sys_audit_event_group.id%TYPE := 7;


--Credit Notification statuses
/** Credit Notification status - waiting for generation*/
c_cn_status_waiting           CONSTANT sys_tech_feedback.status%TYPE := 'W';
/** Credit Notification status - sent*/
c_cn_status_sent              CONSTANT sys_tech_feedback.status%TYPE := 'S';



--Audit events
/**Audit event - System - Scheduler started*/
c_aude_sched_started           CONSTANT sys_audit_event.id%TYPE := 1001;
/**Audit event - System - Scheduler stopped*/
c_aude_sched_stopped           CONSTANT sys_audit_event.id%TYPE := 1002;
/**Audit event - System - User login*/
c_aude_user_login              CONSTANT sys_audit_event.id%TYPE := 1005;
/**Audit event - System - User logout*/
c_aude_user_logout             CONSTANT sys_audit_event.id%TYPE := 1006;
/**Audit event - System - Failed login*/
c_aude_user_failed_login       CONSTANT sys_audit_event.id%TYPE := 1007;
/**Audit event - Admin - Rule: New*/
c_aude_rule_new                CONSTANT sys_audit_event.id%TYPE := 1008;
/**Audit event - Admin - Rule: Update*/
c_aude_rule_update             CONSTANT sys_audit_event.id%TYPE := 1009;
/**Audit event - Admin - Rule: Delete*/
c_aude_rule_delete             CONSTANT sys_audit_event.id%TYPE := 1010;
/**Audit event - Admin - Rule: Approve*/
c_aude_rule_approve            CONSTANT sys_audit_event.id%TYPE := 1011;
/**Audit event - Admin - Rule: Refuse*/
c_aude_rule_refuse             CONSTANT sys_audit_event.id%TYPE := 1012;
/**Audit event - Admin - Code table: New*/
c_aude_ctab_new                CONSTANT sys_audit_event.id%TYPE := 1013;
/**Audit event - Admin - Code table: Update*/
c_aude_ctab_update             CONSTANT sys_audit_event.id%TYPE := 1014;
/**Audit event - Admin - Code table: Delete*/
c_aude_ctab_delete             CONSTANT sys_audit_event.id%TYPE := 1015;
/**Audit event - Admin - Code table: Approve*/
c_aude_ctab_approve            CONSTANT sys_audit_event.id%TYPE := 1016;
/**Audit event - Admin - Code table: Refuse*/
c_aude_ctab_refuse             CONSTANT sys_audit_event.id%TYPE := 1017;
/**Audit event - Admin - Parameter: New*/
c_aude_param_new               CONSTANT sys_audit_event.id%TYPE := 1018;
/**Audit event - Admin - Parameter: Update*/
c_aude_param_update            CONSTANT sys_audit_event.id%TYPE := 1019;
/**Audit event - Admin - Parameter: Delete*/
c_aude_param_delete            CONSTANT sys_audit_event.id%TYPE := 1020;
/**Audit event - Admin - Parameter: Approve*/
c_aude_param_approve           CONSTANT sys_audit_event.id%TYPE := 1021;
/**Audit event - Admin - Parameter: Refuse*/
c_aude_param_refuse            CONSTANT sys_audit_event.id%TYPE := 1022;
/**Audit event - Admin - user: Created*/
c_aude_user_created            CONSTANT sys_audit_event.id%TYPE := 1033;
/**Audit event - Admin - user: Dropped*/
c_aude_user_dropped            CONSTANT sys_audit_event.id%TYPE := 1034;
/**Audit event - Admin - user: Locked*/
c_aude_user_locked             CONSTANT sys_audit_event.id%TYPE := 1035;
/**Audit event - Admin - user: Unlocked*/
c_aude_user_unlocked           CONSTANT sys_audit_event.id%TYPE := 1036;
/**Audit event - Admin - user: Passwd changed*/
c_aude_user_pwd_changed        CONSTANT sys_audit_event.id%TYPE := 1037;
/**Audit event - Admin - Roles: New suggestion*/
c_aude_role_new                CONSTANT sys_audit_event.id%TYPE := 1038;
/**Audit event - Admin - Roles: Update suggestion*/
c_aude_role_update             CONSTANT sys_audit_event.id%TYPE := 1039;
/**Audit event - Admin - Roles: Delete suggestion*/
c_aude_role_delete             CONSTANT sys_audit_event.id%TYPE := 1040;
/**Audit event - Admin - Roles: Approve suggestion*/
c_aude_role_approve            CONSTANT sys_audit_event.id%TYPE := 1041;
/**Audit event - Admin - Roles: Refuse suggestion*/
c_aude_role_refuse             CONSTANT sys_audit_event.id%TYPE := 1042;
/**Audit event - Admin - User: New suggestion*/
c_aude_user_new                CONSTANT sys_audit_event.id%TYPE := 1043;
/**Audit event - Admin - User: Update suggestion*/
c_aude_user_update             CONSTANT sys_audit_event.id%TYPE := 1044;
/**Audit event - Admin - User: Delete suggestion*/
c_aude_user_delete             CONSTANT sys_audit_event.id%TYPE := 1045;
/**Audit event - Admin - User: Approve suggestion*/
c_aude_user_approve            CONSTANT sys_audit_event.id%TYPE := 1046;
/**Audit event - Admin - User: Refuse suggestion*/
c_aude_user_refuse             CONSTANT sys_audit_event.id%TYPE := 1047;
/**Audit event - Admin - Scheduler rule: New*/
c_aude_schrule_new             CONSTANT sys_audit_event.id%TYPE := 1048;
/**Audit event - Admin - Scheduler rule: Update*/
c_aude_schrule_update          CONSTANT sys_audit_event.id%TYPE := 1049;
/**Audit event - Admin - Scheduler rule: Delete*/
c_aude_schrule_delete          CONSTANT sys_audit_event.id%TYPE := 1050;
/**Audit event - Admin - Scheduler rule: Approve*/
c_aude_schrule_approve         CONSTANT sys_audit_event.id%TYPE := 1051;
/**Audit event - Admin - Scheduler rule: Refuse*/
c_aude_schrule_refuse          CONSTANT sys_audit_event.id%TYPE := 1052;
/**Audit event - Channels - Channel failed*/
c_aude_channel_failed          CONSTANT sys_audit_event.id%TYPE := 1058;
/**Audit event - Channels - Sender queue message failed*/
c_sender_queue_message_failed  CONSTANT sys_audit_event.id%TYPE := 1063;
/**Audit event - System - Activity is running too long*/
c_aude_activity_run_too_long   CONSTANT sys_audit_event.id%TYPE := 1060;
/**Audit event - System - Run condition error*/
c_aude_gu_create_po_failed     CONSTANT sys_audit_event.id%TYPE := 1061;
/**Audit event - System - Processing path failed */
c_aude_processing_failed       CONSTANT sys_audit_event.id%TYPE := 1123;
/**Audit Event - System - Run condition error */
c_aude_gu_run_cond_failed      CONSTANT sys_audit_event.id%TYPE := 1128;
/**Audit Event - Channels - Receipt of Status Reject file */
c_aude_status_reject_received  CONSTANT sys_audit_event.id%TYPE := 1129;
/**Audit Event - Channel started*/
c_aude_channel_started         CONSTANT sys_audit_event.id%TYPE := 1130;
/**Audit Event - Channel finished*/
c_aude_channel_finished        CONSTANT sys_audit_event.id%TYPE := 1131;
/**Audit Event - Process started*/
c_aude_process_started         CONSTANT sys_audit_event.id%TYPE := 1132;
/**Audit Event - Processed finished*/
c_aude_process_finished        CONSTANT sys_audit_event.id%TYPE := 1133;
/**Audit event - Admin - Standing order: New*/
c_aude_stord_new               CONSTANT sys_audit_event.id%TYPE := 1134;
/**Audit event - Admin - Standing order: Update*/
c_aude_stord_update            CONSTANT sys_audit_event.id%TYPE := 1135;
/**Audit event - Admin - Standing order: Delete*/
c_aude_stord_delete            CONSTANT sys_audit_event.id%TYPE := 1136;
/**Audit event - Admin - Standing order: Approve*/
c_aude_stord_approve           CONSTANT sys_audit_event.id%TYPE := 1137;
/**Audit event - Admin - Standing order: Refuse*/
c_aude_stord_refuse            CONSTANT sys_audit_event.id%TYPE := 1138;
/**Audit event - Admin -  Calendar auto generated. Set up non-working days*/
c_aude_cal_set_nonworkdays     CONSTANT sys_audit_event.id%TYPE := 1139;
/**Audit event - Admin - MC Template: New*/
c_aude_templ_new               CONSTANT sys_audit_event.id%TYPE := 1140;
/**Audit event - Admin - MC Template: Update*/
c_aude_templ_update            CONSTANT sys_audit_event.id%TYPE := 1141;
/**Audit event - Admin - MC Template: Delete*/
c_aude_templ_delete            CONSTANT sys_audit_event.id%TYPE := 1142;
/**Audit event - Admin - MC Template: Approve*/
c_aude_templ_approve           CONSTANT sys_audit_event.id%TYPE := 1143;
/**Audit event - Admin - MC Template: Refuse*/
c_aude_templ_refuse            CONSTANT sys_audit_event.id%TYPE := 1144;
/**Audit event - Admin - Rule: Clone*/
c_aude_rule_clone              CONSTANT sys_audit_event.id%TYPE := 1145;
/**Audit event - Channels - Channel parameter: Update*/
c_aude_ch_param_update         CONSTANT sys_audit_event.id%TYPE := 1059;
/**Audit event - Channels - Channel parameter: Approve*/
c_aude_ch_param_approve        CONSTANT sys_audit_event.id%TYPE := 1146;
/**Audit event - Channels - Channel parameter: Refuse*/
c_aude_ch_param_refuse         CONSTANT sys_audit_event.id%TYPE := 1147;
/**Audit event - Admin - Account: New*/
c_aude_account_new             CONSTANT sys_audit_event.id%TYPE := 1023;
/**Audit event - Admin - Account: Update*/
c_aude_account_update          CONSTANT sys_audit_event.id%TYPE := 1024;
/**Audit event - Admin - Account: Delete*/
c_aude_account_delete          CONSTANT sys_audit_event.id%TYPE := 1025;
/**Audit event - Admin - Account: Approve*/
c_aude_account_approve         CONSTANT sys_audit_event.id%TYPE := 1148;
/**Audit event - Admin - Account: Refuse*/
c_aude_account_refuse          CONSTANT sys_audit_event.id%TYPE := 1149;
/**Audit event - Admin - Customer: New*/
c_aude_customer_new            CONSTANT sys_audit_event.id%TYPE := 1028;
/**Audit event - Admin - Customer: Update*/
c_aude_customer_update         CONSTANT sys_audit_event.id%TYPE := 1029;
/**Audit event - Admin - Customer: Delete*/
c_aude_customer_delete         CONSTANT sys_audit_event.id%TYPE := 1030;
/**Audit event - Admin - Customer: Approve*/
c_aude_customer_approve        CONSTANT sys_audit_event.id%TYPE := 1150;
/**Audit event - Admin - Customer: Refuse*/
c_aude_customer_refuse         CONSTANT sys_audit_event.id%TYPE := 1151;
/**Audit Event - System - Run condition error */
c_aude_i_run_cond_failed       CONSTANT sys_audit_event.id%TYPE := 1152;
/**Audit event - System - Run condition error*/
c_aude_i_create_po_failed      CONSTANT sys_audit_event.id%TYPE := 1153;

/**Audit event - Channels - Unexpected message structure*/
c_aude_mq_msg_structure        CONSTANT sys_audit_event.id%TYPE := 2000;
/**Audit event - Channels - Unexpected message type*/
c_aude_mq_msg_type             CONSTANT sys_audit_event.id%TYPE := 2001;
/**Audit event - Channels - Unexpected message version*/
c_aude_mq_msg_version          CONSTANT sys_audit_event.id%TYPE := 2002;
/**Audit event - Channels - Unknown customer type*/
c_aude_mq_cust_type            CONSTANT sys_audit_event.id%TYPE := 2003;
/**Audit event - Channels - Customer address not found*/
c_aude_mq_cust_addr_type       CONSTANT sys_audit_event.id%TYPE := 2004;
/**Audit event - Channels - Customer not deleted - exists account/customer rule */
c_aude_mq_cust_not_deleted     CONSTANT sys_audit_event.id%TYPE := 2005;
/**Audit event - Channels - Customer - old replication message */
c_aude_mq_cust_timestamp       CONSTANT sys_audit_event.id%TYPE := 2006;
/**Audit event - Channels - Account - old replication message */
c_aude_mq_acc_timestamp        CONSTANT sys_audit_event.id%TYPE := 2007;
/**Audit event - Channels - Unkonowen account status */
c_aude_mq_acc_status           CONSTANT sys_audit_event.id%TYPE := 2008;
/**Audit event - Channels - Account - customer not exists */
c_aude_mq_acc_no_cust          CONSTANT sys_audit_event.id%TYPE := 2009;
/**Audit event - Channels - Account moved to another backend */
c_aude_mq_acc_moved            CONSTANT sys_audit_event.id%TYPE := 2010;
/**Audit event - Channels - Unexpected error */
c_aude_mq_cust_unexp           CONSTANT sys_audit_event.id%TYPE := 2011;
/**Audit event - Channels - Unexpected error */
c_aude_mq_acc_unexp            CONSTANT sys_audit_event.id%TYPE := 2012;
/**Audit event - Channels - Customer country code error */
c_aude_mq_cust_addr_country    CONSTANT sys_audit_event.id%TYPE := 2013;
/**Audit event - Channels - Customer  mandatory Parameters error */
c_aude_mq_cust_mand            CONSTANT sys_audit_event.id%TYPE := 2014;
/**Audit event - Channels - Account mandatory Parameters error */
c_aude_mq_acc_mand             CONSTANT sys_audit_event.id%TYPE := 2015;
/**Audit event - Channels - Customer unexpected status error*/
c_aude_mq_cust_status          CONSTANT sys_audit_event.id%TYPE := 2016;
/**Audit event - Channels - Account moved to new customer message*/
c_aude_mq_cust_remap_acc       CONSTANT sys_audit_event.id%TYPE := 2017;
/**Audit event - Channels - Unexpected error*/
c_aude_mq_cust_remap_acc_unexp CONSTANT sys_audit_event.id%TYPE := 2018;
/**Audit event - Channels - Account - customer not exists but precreated*/
c_aude_mq_acc_cust_precreated  CONSTANT sys_audit_event.id%TYPE := 2019;
/**Audit event - Channels - Account - account already closed*/
c_aude_mq_acc_already_closed   CONSTANT sys_audit_event.id%TYPE := 2020;
/**Audit event - Channels - FATF validation failed*/
c_aude_fatf_validation_failed  CONSTANT sys_audit_event.id%TYPE := 2021;
/**Audit event - Channels - FX - old replication message */
c_aude_mq_fx_timestamp         CONSTANT sys_audit_event.id%TYPE := 2022;
/**Audit event - Channels - FX mandatory Parameters error */
c_aude_mq_fx_mand              CONSTANT sys_audit_event.id%TYPE := 2023;
/**Audit event - Channels - FX - unexpected error */
c_aude_mq_fx_unexp             CONSTANT sys_audit_event.id%TYPE := 2024;
/**Audit event - Channels - Technical Booking - negative response */
c_aude_mq_tech_bkg_nack        CONSTANT sys_audit_event.id%TYPE := 2025;
/**Audit event - Recall Request Fraudulent Original Credit Transfer */
c_aude_recall_frad             CONSTANT sys_audit_event.id%TYPE := 2026;
/**Audit event - Incoming Recall Request not yet answered */
c_aude_recall_our_answer_due   CONSTANT sys_audit_event.id%TYPE := 2027;
/**Audit event - Transaction $1 amount is less than BEN charge. Charge transaction $2 will be booked erroneously.*/
c_aude_ben_charge_greater_pmt  CONSTANT sys_audit_event.id%TYPE := 2028;

/**Audit event - Channels - MQ Communication error*/
c_aude_mq_send_err             CONSTANT sys_audit_event.id%TYPE := 2050;
/**Audit event - Business - Clearing partners balance was changed*/
c_aude_clp_balance_changed     CONSTANT sys_audit_event.id%TYPE := 2052;
/**Audit event - Business - Queue has item count above threshold*/
c_aude_queue_alert_threshold   CONSTANT sys_audit_event.id%TYPE := 2053;
/**Audit event - System - Load of MQ message File ID xxx with File Name "zzz" failed with following error: yyy*/
c_aude_mq_load_failed          CONSTANT sys_audit_event.id%TYPE := 2054;

/**Audit event - Business - GPI Tx near COT per currency*/
c_aude_gpi_near_cot_per_cur    CONSTANT sys_audit_event.id%TYPE := 2100;
/**Audit event - Business - Tx rejected in GPI*/
c_aude_gpi_rejected            CONSTANT sys_audit_event.id%TYPE := 2101;
/**Audit event - Business - Tx delayed in GPI*/
c_aude_gpi_delayed             CONSTANT sys_audit_event.id%TYPE := 2102;
/**Audit event - Business - R-transaction count over limit*/
c_aude_r_tran_cnt_over_lmt     CONSTANT sys_audit_event.id%TYPE := 2103;
/**Audit event - Business - Non-STP transaction count over limit*/
c_aude_nonstp_cnt_over_lmt     CONSTANT sys_audit_event.id%TYPE := 2104;
/**Audit event - Business - R-transaction count over 7-day limit*/
c_aude_r_tran_cnt_over_7lmt    CONSTANT sys_audit_event.id%TYPE := 2105;
/**Audit event - Business - Non-STP transaction count over 7-day limit*/
c_aude_nonstp_cnt_over_7lmt    CONSTANT sys_audit_event.id%TYPE := 2106;

/**Audit event - Admin - Originator: New*/
c_aude_originator_new          CONSTANT sys_audit_event.id%TYPE := 2150;
/**Audit event - Admin - Originator: Update*/
c_aude_originator_update       CONSTANT sys_audit_event.id%TYPE := 2151;
/**Audit event - Admin - Originator: Update*/
c_aude_originator_delete       CONSTANT sys_audit_event.id%TYPE := 2152;
/**Audit event - Admin - Originator: Approve*/
c_aude_originator_approve      CONSTANT sys_audit_event.id%TYPE := 2153;
/**Audit event - Admin - Originator: Refused*/
c_aude_originator_refuse       CONSTANT sys_audit_event.id%TYPE := 2154;

/**Audit event - System - Payment Defer*/
c_aude_payment_defer           CONSTANT sys_audit_event.id%TYPE := 2160;

/**Audit event - System - Approval failed*/
c_aude_approval_failed         CONSTANT sys_audit_event.id%TYPE := 3028;

--Maximum number od calls SYS_EXC_PKG.log_only in case of SYS_EXC_PKG.exc_bulk_errors occurs.
c_bulk_error_max_log_count     CONSTANT INTEGER := 10;

END SYS_CONSTANTS_PKG;
/
;
