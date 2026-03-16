CREATE OR REPLACE NONEDITIONABLE PACKAGE "DEMO"."TP_CONSTANTS_PKG" IS
/**
* Transaction processing module - global constants.
* <br><br>
* $Id$
* $Revision$
* $DateTime$
* $Author$
* @headcom
*/

--Yes/no flags
/** Yes/No char flags - yes */
c_yes                          CONSTANT VARCHAR2(1) := 'Y';
/** Yes/No char flags - no */
c_no                           CONSTANT VARCHAR2(1) := 'N';

--ON/OFF switch
/** ON/OFF switch - ON */
c_switch_on                    CONSTANT VARCHAR2(3) := 'ON';
/** ON/OFF switch - ON */
c_switch_off                   CONSTANT VARCHAR2(3) := 'OFF';

--Success/Error flags
/** Success/Error flags - success */
c_success                      CONSTANT VARCHAR2(1) := 'S';
/** Success/Error flags - error */
c_error                        CONSTANT VARCHAR2(1) := 'E';

-- Global data types used in process path parameters
/** Data type - text */
c_data_type_text               CONSTANT VARCHAR2(1) := 'T';
/** Data type - number */
c_data_type_number             CONSTANT VARCHAR2(1) := 'N';
/** Data type - date without hours*/
c_data_type_date               CONSTANT VARCHAR2(1) := 'D';
/** Data type - time (hours, minutes, seconds)*/
c_data_type_time               CONSTANT VARCHAR2(1) := 'H';


/** IO type - IN*/
c_io_type_in                   CONSTANT VARCHAR2(1) := 'I';
/** IO type - OUT*/
c_io_type_out                  CONSTANT VARCHAR2(1) := 'O';

-- Types of Process Units
/** Process unit type - processing node */
c_pu_type_processing_node      CONSTANT tp_proc_unit.pu_type%TYPE := 'PN';
/** Process unit type - input channel */
c_pu_type_input_channel        CONSTANT tp_proc_unit.pu_type%TYPE := 'IC';
/** Process unit type - output channel */
c_pu_type_output_channel       CONSTANT tp_proc_unit.pu_type%TYPE := 'OC';
/** Process unit type - report channel */
c_pu_type_report_channel       CONSTANT tp_proc_unit.pu_type%TYPE := 'RC';
/** Process unit type - generic unit */
c_pu_type_generic_unit         CONSTANT tp_proc_unit.pu_type%TYPE := 'GU';
/** Process unit type - online workflow */
c_pu_type_online_workflow      CONSTANT tp_proc_unit.pu_type%TYPE := 'WF';
/** Process unit type - input queue */
c_pu_type_input_queue          CONSTANT tp_proc_unit.pu_type%TYPE := 'IQ';
/** Process unit type - output queue */
c_pu_type_output_queue         CONSTANT tp_proc_unit.pu_type%TYPE := 'OQ';

-- Statuses of IO Queues
/** IO Queue status - stopped */
c_io_queue_status_stopped      CONSTANT tp_io_queue.status%TYPE := 'S';
/** IO Queue status - running */
c_io_queue_status_running      CONSTANT tp_io_queue.status%TYPE := 'R';

-- Types of Process Objects
/** Process object type - processing group */
c_po_type_process_group        CONSTANT tp_proc_object.po_type%TYPE := 'PG';
/** Process object type - input object */
c_po_type_input_object         CONSTANT tp_proc_object.po_type%TYPE := 'IO';
/** Process object type - output object */
c_po_type_output_object        CONSTANT tp_proc_object.po_type%TYPE := 'OO';
/** Process object type - report output object */
c_po_type_report_object        CONSTANT tp_proc_object.po_type%TYPE := 'RO';
/** Process object type - generic object */
c_po_type_generic_object       CONSTANT tp_proc_object.po_type%TYPE := 'GO';
/** Process object type - input message */
c_po_type_input_message        CONSTANT tp_proc_object.po_type%TYPE := 'IM';
/** Process object type - output message */
c_po_type_output_message       CONSTANT tp_proc_object.po_type%TYPE := 'OM';


-- Running modes of Process Units
/** Process unit run mode - automatic */
c_pu_run_mode_auto             CONSTANT VARCHAR2(1) := 'A';
/** Process unit run mode - manual */
c_pu_run_mode_manual           CONSTANT VARCHAR2(1) := 'M';

-- Types of Process Activities
/** Process activity type - PL/SQL */
c_pa_type_plsql                CONSTANT tp_proc_activity.pa_type%TYPE := 'PL/SQL';
/** Process activity type - JAVA */
c_pa_type_java                 CONSTANT tp_proc_activity.pa_type%TYPE := 'JAVA';

-- Types of Manual Activities
/** Manual activity type - PL/SQL */
c_ma_type_plsql                CONSTANT tp_manual_activity_exec_obj.ma_type%TYPE := 'PL/SQL';
/** Manual activity type - JAVA */
c_ma_type_java                 CONSTANT tp_manual_activity_exec_obj.ma_type%TYPE := 'JAVA';


-- Statuses of Process Objects
/** Process object status - queued */
c_po_status_queued             CONSTANT tp_proc_object.status%TYPE := 'Q';
/** Process object status - running */
c_po_status_running            CONSTANT tp_proc_object.status%TYPE := 'R';
/** Process object status - success */
c_po_status_success            CONSTANT tp_proc_object.status%TYPE := 'S';
/** Process object status - waiting */
c_po_status_waiting            CONSTANT tp_proc_object.status%TYPE := 'W';
/** Process object status - prepared for run */
c_po_status_prepared_4_run     CONSTANT tp_proc_object.status%TYPE := 'P';
/** Process object status - processing cancelled */
c_po_status_cancelled          CONSTANT tp_proc_object.status%TYPE := 'X';
/** Process object status - online message running */
c_po_status_online_msg_running CONSTANT tp_proc_object.status%TYPE := 'O';


-- GUI Statuses of Process Objects (presented in Channel/Process monitor)
/** Process object GUI status - error */
c_po_gui_status_error          CONSTANT tp_proc_object.status%TYPE := 'E';
/** Process object GUI status - duplicate */
c_po_gui_status_duplicate      CONSTANT tp_proc_object.status%TYPE := 'D';
/** Process object GUI status - manual */
c_po_gui_status_manual         CONSTANT tp_proc_object.status%TYPE := 'M';
/** Process object GUI status - verify (to approve) */
c_po_gui_status_verify         CONSTANT tp_proc_object.status%TYPE := 'T';
/** Process object GUI status - queued */
c_po_gui_status_queued         CONSTANT tp_proc_object.status%TYPE := c_po_status_queued;
/** Process object GUI sstatus - running */
c_po_gui_status_running        CONSTANT tp_proc_object.status%TYPE := c_po_status_running;
/** Process object GUI sstatus - success */
c_po_gui_status_success        CONSTANT tp_proc_object.status%TYPE := c_po_status_success;
/** Process object GUI sstatus - waiting */
c_po_gui_status_waiting        CONSTANT tp_proc_object.status%TYPE := c_po_status_waiting;
/** Process object GUI sstatus - processing cancelled */
c_po_gui_status_cancelled      CONSTANT tp_proc_object.status%TYPE := c_po_status_cancelled;


-- Statuses of Process Step Instances
/** Process step instance status - success */
c_psi_status_success           CONSTANT tp_proc_step_instance.status%TYPE := 'S';
/** Process step instance status - running */
c_psi_status_running           CONSTANT tp_proc_step_instance.status%TYPE := 'R';
/** Process step instance status - assigned */
c_psi_status_assigned          CONSTANT tp_proc_step_instance.status%TYPE := 'A';
/** Process step instance status - unassigned */
c_psi_status_unassigned        CONSTANT tp_proc_step_instance.status%TYPE := 'U';
/** Process step instance status - error */
c_psi_status_error             CONSTANT tp_proc_step_instance.status%TYPE := 'E';



-- Data types of process object param values
/** Param value data type - text */
c_popv_type_text               CONSTANT tp_proc_object_par_value.data_type%TYPE := 'T';
/** Param value data type - number */
c_popv_type_number             CONSTANT tp_proc_object_par_value.data_type%TYPE := 'N';
/** Param value data type - date */
c_popv_type_date               CONSTANT tp_proc_object_par_value.data_type%TYPE := 'D';


--Types of Process Steps
/** Process step type - activity */
c_ps_type_activity             CONSTANT tp_proc_step.ps_type%TYPE := 'A';
/** Process step type - queue */
c_ps_type_queue                CONSTANT tp_proc_step.ps_type%TYPE := 'Q';


--Types of parameters value instantiation during creating a processing object
/** Parameters value instantiation type - by user or scheduler rule */
c_ppp_type_user                CONSTANT tp_proc_path_param.param_type%TYPE := 'U';
/** Parameters value instantiation type - automaticly from tp_proc_path_param_value */
c_ppp_type_auto                CONSTANT tp_proc_path_param.param_type%TYPE := 'A';
/** Parameters value instantiation type - not instantiated, but fetched from system tables in runtime */
c_ppp_type_noinstance          CONSTANT tp_proc_path_param.param_type%TYPE := 'N';


--Types of scheduler rules
/** Scheduler rule type - automatic, general */
c_schrule_type_auto            CONSTANT tp_scheduler_rule.rule_type%TYPE := 'AUTO';
/** Scheduler rule type - automatic, once at specified time */
c_schrule_type_auto_time       CONSTANT tp_scheduler_rule.rule_type%TYPE := 'AUTO_TIME';
/** Scheduler rule type - automatic, repeatedly ater specified time */
c_schrule_type_auto_freq       CONSTANT tp_scheduler_rule.rule_type%TYPE := 'AUTO_FREQ';
/** Scheduler rule type - manual, general */
c_schrule_type_manual          CONSTANT tp_scheduler_rule.rule_type%TYPE := 'MANUAL';


--Day names for scheduler rules
/** Scheduler rule - day name - any day*/
c_schrule_dayname_any          CONSTANT tp_scheduler_rule.day_name%TYPE := 'ANY';
/** Scheduler rule - day name - working day*/
c_schrule_dayname_workday      CONSTANT tp_scheduler_rule.day_name%TYPE := 'WORKDAY';
/** Scheduler rule - day name - non working day*/
c_schrule_dayname_nonworkday   CONSTANT tp_scheduler_rule.day_name%TYPE := 'NONWORKDAY';
/** Scheduler rule - day name - the first working day*/
c_schrule_dayname_frst_workday CONSTANT tp_scheduler_rule.day_name%TYPE := 'FIRSTWORKDAY';
/** Scheduler rule - day name - the last working day*/
c_schrule_dayname_last_workday CONSTANT tp_scheduler_rule.day_name%TYPE := 'LASTWORKDAY';

-- Priorities
/** Priority - HIGH*/
c_priority_high             CONSTANT tp_scheduler_rule.priority%TYPE := 1;
/** Priority - MEDIUM*/
c_priority_medium           CONSTANT tp_scheduler_rule.priority%TYPE := 2;
/** Priority - LOW*/
c_priority_low              CONSTANT tp_scheduler_rule.priority%TYPE := 3;


--Even or odd weeks for scheduler rules
/** Scheduler rule - week type - even*/
c_schrule_weektype_even        CONSTANT tp_scheduler_rule.week_even_odd%TYPE := 'E';
/** Scheduler rule - week type - odd*/
c_schrule_weektype_odd         CONSTANT tp_scheduler_rule.week_even_odd%TYPE := 'O';


-- Statuses of registered input files
/** Input files status - unassigned*/
c_iof_status_unassigned        CONSTANT tp_io_file.status%TYPE := 'U';
/** Input files status - assigned to logical file*/
c_iof_status_assigned_lf       CONSTANT tp_io_file.status%TYPE := 'G';
/** Input files status - assigned to process object*/
c_iof_status_assigned_po       CONSTANT tp_io_file.status%TYPE := 'O';
/** Input files status - loaded*/
c_iof_status_loaded            CONSTANT tp_io_file.status%TYPE := 'L';
/** Input files status - published (used for output files and messages)*/
c_iof_status_published         CONSTANT tp_io_file.status%TYPE := 'P';
/** Input files status - error*/
c_iof_status_error             CONSTANT tp_io_file.status%TYPE := 'E';
/** Input files status - bad file*/
c_iof_status_bad_file          CONSTANT tp_io_file.status%TYPE := 'B';
/** Input files status - ignored (removed/overwritten)*/
c_iof_status_ignored           CONSTANT tp_io_file.status%TYPE := 'X';

/** Input files and entities usage - input file*/
c_iof_ent_usage_input          CONSTANT tp_io_file_ent.usage%TYPE := 'I';
/** Input files and entities usage - output file*/
c_iof_ent_usage_output         CONSTANT tp_io_file_ent.usage%TYPE := 'O';


-- Business file types of registered iput/output files
/** Input files business type - data file*/
c_iof_type_data_file           CONSTANT tp_io_file.file_type%TYPE := 'D';
/** Input files business type - confirmation file to confirm data file readiness*/
c_iof_type_confirm_file        CONSTANT tp_io_file.file_type%TYPE := 'C';
/** Input files business type - report file*/
c_iof_type_report_file         CONSTANT tp_io_file.file_type%TYPE := 'R';
/** Input files business type - feedback file*/
c_iof_type_feedback_file       CONSTANT tp_io_file.file_type%TYPE := 'F';
/** Input files business type - message file*/
c_iof_type_message_file        CONSTANT tp_io_file.file_type%TYPE := 'M';

--External table structure type
/** External table structure type - delimited*/
c_ext_tab_delimited            CONSTANT VARCHAR2(1) := 'D';
/** External table structure type - fixed width*/
c_ext_tab_fixedwidth           CONSTANT VARCHAR2(1) := 'F';

-- Common process path parameter names for channels
/** Process path parameter names - Input channels - confirmation file's extension*/
c_ppp_ich_cnf_extension        CONSTANT tp_proc_path_param.name%TYPE := 'ICH_CNF_EXTENSION';
/** Process path parameter names - Input channels - file name mask*/
c_ppp_ich_file_name_mask       CONSTANT tp_proc_path_param.name%TYPE := 'ICH_FILE_NAME_MASK';
/** Process path parameter names - Input channels - ZIP file name mask*/
c_ppp_zip_file_name_mask       CONSTANT tp_proc_path_param.name%TYPE := 'ZIP_FILE_NAME_MASK';
/** Process path parameter names - Input channels - input file duplicate check method*/
c_ppp_ich_dupl_check_method    CONSTANT tp_proc_path_param.name%TYPE := 'ICH_DUPLICATE_CHECK_METHOD';
/** Process path parameter names - Input channels - polling interval*/
c_ppp_ich_poll_interval        CONSTANT tp_proc_path_param.name%TYPE := 'ICH_POLL_INTERVAL';
/** Process path parameter names - Input channels - max messages per poll*/
c_ppp_ich_poll_max_messages    CONSTANT tp_proc_path_param.name%TYPE := 'ICH_POLL_MAX_MESSAGES';
/** Process path parameter names - Input channels - scan after num messages*/
c_ppp_ich_scan_after_num_messages    CONSTANT tp_proc_path_param.name%TYPE := 'ICH_SCAN_AFTER_NUM_MESSAGES';
/** Process path parameter names - Feedback channel - name*/
c_ppp_fb_name                  CONSTANT tp_proc_unit.name%TYPE := 'FB_CHANNEL_NAME';
/** Process path parameter names - Input/output channels - file directory*/
c_ppp_directory                CONSTANT tp_proc_path_param.name%TYPE := 'DIRECTORY';
/** Process path parameter names - Input/output channels - file directory to be created by deployment script (for output queues)*/
c_ppp_create_directory         CONSTANT tp_proc_path_param.name%TYPE := 'CREATE_DIRECTORY';
/** Process path parameter names - Input/output channels - DB directory for data files*/
c_ppp_db_data_directory        CONSTANT tp_proc_path_param.name%TYPE := 'DB_DATA_DIRECTORY';
/** Process path parameter names - Input/output channels - DB directory for log files*/
c_ppp_db_log_directory         CONSTANT tp_proc_path_param.name%TYPE := 'DB_LOG_DIRECTORY';
/** Process path parameter names - Input/output channels - start by 4 eyes*/
c_ppp_start_by_4eyes           CONSTANT tp_proc_path_param.name%TYPE := 'START_BY_4EYES';
/** Process path parameter names - Input channels - input storage type */
c_ppp_ich_input_storage_type   CONSTANT tp_proc_path_param.name%TYPE := 'ICH_INPUT_STORAGE_TYPE';
/** Process path parameter names - Input/output channels and Generic units - manual request for block */
c_ppp_manual_block_request     CONSTANT tp_proc_path_param.name%TYPE := 'MANUAL_BLOCK_REQUEST';
/** Process path parameter names - Output channels - FTP Output switch (ON/OFF) */
c_ppp_ftp_output               CONSTANT tp_proc_path_param.name%TYPE := 'FTP_OUTPUT';
/** Process path parameter names - Output channels - FTP target IP address */
c_ppp_ftp_target_ip            CONSTANT tp_proc_path_param.name%TYPE := 'FTP_TARGET_IP';
/** Process path parameter names - Output channels - FTP target port */
c_ppp_ftp_target_port          CONSTANT tp_proc_path_param.name%TYPE := 'FTP_TARGET_PORT';
/** Process path parameter names - Output channels - FTP target user name */
c_ppp_ftp_target_user          CONSTANT tp_proc_path_param.name%TYPE := 'FTP_TARGET_USER';
/** Process path parameter names - Output channels - FTP target user password */
c_ppp_ftp_target_passwd        CONSTANT tp_proc_path_param.name%TYPE := 'FTP_TARGET_PASSWD';
/** Process path parameter names - Output channels - SFTP target key file */
c_ppp_ftp_sftp_key_file        CONSTANT tp_proc_path_param.name%TYPE := 'FTP_SFTP_KEY_FILE';
/** Process path parameter names - Output channels - SFTP target key file password*/
c_ppp_ftp_sftp_key_file_passwd CONSTANT tp_proc_path_param.name%TYPE := 'FTP_SFTP_KEY_FILE_PASSWD';
/** Process path parameter names - Output channels - FTP target directory */
c_ppp_ftp_target_directory     CONSTANT tp_proc_path_param.name%TYPE := 'FTP_TARGET_DIRECTORY';
/** Process path parameter names - Output channels - FTP target SFTP switch (ON/OFF) */
c_ppp_ftp_target_sftp          CONSTANT tp_proc_path_param.name%TYPE := 'FTP_TARGET_SFTP';
/** Process path parameter names - Output channels - FTP create confirmation file (Y/N)*/
c_ppp_ftp_create_cnf           CONSTANT tp_proc_path_param.name%TYPE := 'FTP_CREATE_CNF';
/** Process path parameter names - Output channels - FTP confirmation file extension*/
c_ppp_ftp_cnf_extension        CONSTANT tp_proc_path_param.name%TYPE := 'FTP_CNF_EXTENSION';
/** Process path parameter names - Output channels - FTP fixed file name*/
c_ppp_ftp_upload_file_name     CONSTANT tp_proc_path_param.name%TYPE := 'FTP_UPLOAD_FILENAME';
/** Process path parameter names - Input channels - Accept empty data file (Y/N)*/
c_ppp_ich_accept_empty_file    CONSTANT tp_proc_path_param.name%TYPE := 'ICH_ACCEPT_EMPTY_FILE';
/** Process path parameter names - Input/output channels - Technical feedback type*/
c_ppp_tech_feedback_type       CONSTANT tp_proc_path_param.name%TYPE := 'TECH_FEEDBACK_TYPE';
/** Process path parameter names - Input/output channels - Technical feedback switch ON/OFF*/
c_ppp_tech_feedback_switch     CONSTANT tp_proc_path_param.name%TYPE := 'TECH_FEEDBACK_SWITCH';
/** Process path parameter names - Input/output channels - Character encoding switch ON/OFF*/
c_ppp_encoding_enabled         CONSTANT tp_proc_path_param.name%TYPE := 'ENCODING_SWITCH';
/** Process path parameter names - Input/output channels - Character encoding name */
c_ppp_encoding_name            CONSTANT tp_proc_path_param.name%TYPE := 'ENCODING_NAME';
/** Process path parameter names - Input/output channels - Kafka Topic name */
c_ppp_kafka_topic_name         CONSTANT tp_proc_path_param.name%TYPE := 'KAFKA_TOPIC_NAME';
/** Process path parameter names - Input/output channels - Kafka topic object name */
c_ppp_kafka_topic_object_name  CONSTANT tp_proc_path_param.name%TYPE := 'KAFKA_TOPIC_OBJECT_NAME';
/** Process path parameter names - Input/output channels - Kafka Cluster name */
c_ppp_kafka_cluster_name       CONSTANT tp_proc_path_param.name%TYPE := 'KAFKA_CLUSTER_NAME';
/** Process path parameter names - Input/output channels - Kafka topic object name response */
c_ppp_kafka_topic_object_name_resp  CONSTANT tp_proc_path_param.name%TYPE := 'KAFKA_TOPIC_OBJECT_NAME_RESP';
/** Process path parameter names - Input/output channels - Kafka Cluster name response */
c_ppp_kafka_cluster_name_resp  CONSTANT tp_proc_path_param.name%TYPE := 'KAFKA_CLUSTER_NAME_RESP';
/** Process path parameter names - Input/output channels - Content type */
c_ppp_content_type             CONSTANT tp_proc_path_param.name%TYPE := 'CONTENT_TYPE';
/** Process path parameter names - Input/output channels - Format id */
c_ppp_format_id                CONSTANT tp_proc_path_param.name%TYPE := 'FORMAT_ID';
/** Process path parameter names - Input/output channels - Character filter replacement character*/
c_ppp_filter_replacement_char  CONSTANT tp_proc_path_param.name%TYPE := 'FILTER_REPLACEMENT_CHAR';
/** Process path parameter names - Input/output channels - Character filter name */
c_ppp_filter_name              CONSTANT tp_proc_path_param.name%TYPE := 'FILTER_NAME';
/** Process path parameter names - Output channels - Next sequence number for channel instance*/
c_ppp_today_next_seq           CONSTANT tp_proc_path_param.name%TYPE := 'TODAY_NEXT_SEQ';
/** Process path parameter names - Output channels - Next sequence number for channel instance (not reset daily)*/
c_ppp_next_seq                 CONSTANT tp_proc_path_param.name%TYPE := 'NEXT_SEQ';
/** Process path parameter names - Output channels - Maximum record per data file*/
c_ppp_flt_c_records_per_file   CONSTANT tp_proc_path_param.name%TYPE := 'FLT_C_RECORDS_PER_FILE';
/** Process path parameter names - Reports - Channel instance ID being reported about*/
c_ppp_reported_po_id           CONSTANT tp_proc_path_param.name%TYPE := 'REPORTED_PO_ID';
/** Process path parameter names - Reports - Channel ID that reports about a channel instance*/
c_ppp_reported_by_pu_id        CONSTANT tp_proc_path_param.name%TYPE := 'REPORTED_BY_PU_ID';
/** Process path parameter names - Reports - Channel name that reports about a channel instance*/
c_ppp_reported_by_pu_name      CONSTANT tp_proc_path_param.name%TYPE := 'REPORTED_BY_PU_NAME';
/** Process path parameter names - Input channels - Customer facing system ID assigned to the channel*/
c_ppp_cust_facing_system       CONSTANT tp_proc_path_param.name%TYPE := 'CUST_FACING_SYSTEM';
/** Process path parameter names - Reports - Date from*/
c_ppp_report_date_from         CONSTANT tp_proc_path_param.name%TYPE := 'REPORT_DATE_FROM';
/** Process path parameter names - Reports - Date to*/
c_ppp_report_date_to           CONSTANT tp_proc_path_param.name%TYPE := 'REPORT_DATE_TO';
/** Process path parameter names - Reports - Clearing cycle ID*/
c_ppp_report_ccycle_id         CONSTANT tp_proc_path_param.name%TYPE := 'REPORT_CLEARING_CYCLE_ID';
/** Process path parameter names - Reports - Date*/
c_ppp_report_date              CONSTANT tp_proc_path_param.name%TYPE := 'REPORT_DATE';
/** Process path parameter names - Reports - Month*/
c_ppp_report_month             CONSTANT tp_proc_path_param.name%TYPE := 'REPORT_MONTH';
/** Process path parameter names - Reports - Print file?*/
c_ppp_report_print_flag        CONSTANT tp_proc_path_param.name%TYPE := 'REPORT_PRINT_FLAG';
/** Process path parameter names - Reports - Printer*/
c_ppp_report_printer           CONSTANT tp_proc_path_param.name%TYPE := 'REPORT_PRINTER';
/** Process path parameter names - Reports - Orientation*/
c_ppp_report_orientation       CONSTANT tp_proc_path_param.name%TYPE := 'REPORT_ORIENTATION';
/** Process path parameter names - Reports - Orientation*/
c_ppp_testcode                 CONSTANT tp_proc_path_param.name%TYPE := 'TEST_CODE';
/** Process path parameter names - Validate output */
c_ppp_validate_output          CONSTANT tp_proc_path_param.name%TYPE := 'VALIDATE_OUTPUT';
/** Process path parameter names - Validate input */
c_ppp_validate_input           CONSTANT tp_proc_path_param.name%TYPE := 'VALIDATE_INPUT';
/** Process path parameter names - Status Informatino scanning process - Last scanned TRANS.ID*/
c_ppp_last_scanned_tran_id     CONSTANT tp_proc_path_param.name%TYPE := 'LAST_SCANNED_TRANS_ID';
/** Process path parameter names - BAFIR BIC*/
c_ppp_bafir_bic                CONSTANT tp_proc_path_param.name%TYPE := 'BAFIR_BIC';
/** Process path parameter names - Upload of file from Client enabled*/
c_ppp_client_upload_enabled    CONSTANT tp_proc_path_param.name%TYPE := 'CLIENT_UPLOAD_ENABLED';
/** Process path parameter names - Download of file from Client enabled*/
c_ppp_client_download_enabled  CONSTANT tp_proc_path_param.name%TYPE := 'CLIENT_DOWNLOAD_ENABLED';
/** Process path parameter names - Wait for approval*/
c_ppp_wait_for_approval        CONSTANT tp_proc_path_param.name%TYPE := 'WAIT_FOR_APPROVAL';
/** Process path parameter names - cnf usage*/
c_ppp_ich_use_cnf_file         CONSTANT tp_proc_path_param.name%TYPE := 'ICH_USE_CNF_FILE';
/** Process path parameter names - max count of input files processed by one input channel instance*/
c_ppp_max_instance_file_count  CONSTANT tp_proc_path_param.name%TYPE := 'MAX_INSTANCE_FILE_COUNT';
/** Process path parameter names - max number of logical files to process into separate channel instances at one time*/
c_ppp_max_new_instances_from_files  CONSTANT tp_proc_path_param.name%TYPE := 'MAX_NEW_INSTANCES_FROM_FILES';
/** Process path parameter names - zip usage on incoming files*/
c_ppp_inc_zip                  CONSTANT tp_proc_path_param.name%TYPE := 'INC_ZIP';
/** Process path parameter names - un-zip usage on incoming files*/
c_ppp_unzip_files_in_inc       CONSTANT tp_proc_path_param.name%TYPE := 'UNZIP_FILES_IN_INC';
/** Process path parameter names - zip usage on archived files*/
c_ppp_arc_zip                  CONSTANT tp_proc_path_param.name%TYPE := 'ARC_ZIP';
/** Process path parameter names - zip usage on uploaded files*/
c_ppp_xfer_zip                 CONSTANT tp_proc_path_param.name%TYPE := 'XFER_ZIP';
/** Process path parameter names - zip file extension*/
c_ppp_ext_zip                  CONSTANT tp_proc_path_param.name%TYPE := 'EXT_ZIP';
/** Process path parameter names - TF_SENDER_ID*/
c_ppp_tf_sender_id             CONSTANT tp_proc_path_param.name%TYPE := 'TF_SENDER_ID';
/** Process path parameter names - TF_RECEIVER_ID*/
c_ppp_tf_receiver_id             CONSTANT tp_proc_path_param.name%TYPE := 'TF_RECEIVER_ID';
/** Process path parameter names - TF_ACTOR*/
c_ppp_tf_actor                 CONSTANT tp_proc_path_param.name%TYPE := 'TF_ACTOR';
/** Process path parameter names - TF_FILE_PREFIX*/
c_ppp_tf_file_prefix           CONSTANT tp_proc_path_param.name%TYPE := 'TF_FILE_PREFIX';
/** Process path parameter names - TF_FILE_SEQUENCE*/
c_ppp_tf_file_sequence         CONSTANT tp_proc_path_param.name%TYPE := 'TF_FILE_SEQUENCE';
/** Process path parameter names - RCV_INST_BIC*/
c_ppp_rcv_inst_bic             CONSTANT tp_proc_path_param.name%TYPE := 'RCV_INST_BIC';
/** Process path parameter names - Sending institution BIC*/
c_ppp_snd_inst_bic             CONSTANT tp_proc_path_param.name%TYPE := 'SND_INST_BIC';
/** Process path parameter names - MQ message queue name*/
c_ppp_mq_msg_queue_name        CONSTANT tp_proc_path_param.name%TYPE := 'MQ_MSG_QUEUE_NAME';
/** Process path parameter names - MQ COA queue name*/
c_ppp_mq_coa_queue_name        CONSTANT tp_proc_path_param.name%TYPE := 'MQ_COA_QUEUE_NAME';
/** Process path parameter names - MQ COA queue manager*/
c_ppp_mq_coa_queue_mngr        CONSTANT tp_proc_path_param.name%TYPE := 'MQ_COA_QUEUE_MNGR';
/** Process path parameter names - MQ message format*/
c_ppp_mq_msg_format            CONSTANT tp_proc_path_param.name%TYPE := 'MQ_MSG_FORMAT';
/** Process path parameter names - Store message content*/
c_ppp_store_msg_content        CONSTANT tp_proc_path_param.name%TYPE := 'STORE_MESSAGE_CONTENT';
/** Process path parameter names - MQ message format*/
c_ppp_mq_user_identifier       CONSTANT tp_proc_path_param.name%TYPE := 'MQ_USER_IDENTIFIER';
/** Process path parameter names - MQ COA format*/
c_ppp_mq_coa_format            CONSTANT tp_proc_path_param.name%TYPE := 'MQ_COA_FORMAT';
/** Process path parameter names - MQ DB-link*/
c_ppp_mq_db_link               CONSTANT tp_proc_path_param.name%TYPE := 'MQ_DB_LINK';
/** Process path parameter names - Alert error*/
c_ppp_alert_error              CONSTANT tp_proc_path_param.name%TYPE := 'ALERT_ERROR';
/** Process path parameter names - Message type*/
c_ppp_message_type             CONSTANT tp_proc_path_param.name%TYPE := 'MESSAGE_TYPE';
/** Process path parameter names - Format name*/
c_ppp_format_name              CONSTANT tp_proc_path_param.name%TYPE := 'FORMAT_NAME';
/** Process path parameter names - Rulebook*/
c_ppp_rulebook                 CONSTANT tp_proc_path_param.name%TYPE := 'RULEBOOK';
/** Process path parameter names - Workflow name*/
c_ppp_workflow_name            CONSTANT tp_proc_path_param.name%TYPE := 'WORKFLOW_NAME';
/** Process path parameter names - Batching Format name*/
c_ppp_batching_format          CONSTANT tp_proc_path_param.name%TYPE := 'BATCHING_FORMAT';
/** Process path parameter names - Format name*/
c_ppp_format_group             CONSTANT tp_proc_path_param.name%TYPE := 'FORMAT_GROUP';
/** Process path parameter names - Cut-off time*/
c_ppp_cut_off_time             CONSTANT tp_proc_path_param.name%TYPE := 'CUT_OFF_TIME';
/** Process path parameter names - Distributed to*/
c_ppp_distributed_to           CONSTANT tp_proc_path_param.name%TYPE := 'DISTRIBUTED_TO';
/** Process path parameter names - Channel out*/
c_ppp_channel_out              CONSTANT tp_proc_path_param.name%TYPE := 'CHANNEL_OUT';
/** Process path parameter names - Business type*/
c_ppp_product_code             CONSTANT tp_proc_path_param.name%TYPE := 'PRODUCT_CODE';
/** Process path parameter names - Business type*/
c_ppp_product_scheme           CONSTANT tp_proc_path_param.name%TYPE := 'PRODUCT_SCHEME';
/** Process path parameter names - SCT Settlement*/
c_ppp_sct_settlement           CONSTANT tp_proc_path_param.name%TYPE := 'SCT_SETTLEMENT';
/** Process path parameter names - Report statrep group*/
c_ppp_r_statrep_group          CONSTANT tp_proc_path_param.name%TYPE := 'R_STATREP_GROUP';
/** Process path parameter names - Report statrep group (extended with domestic value)*/
c_ppp_r_statrep_group_ext      CONSTANT tp_proc_path_param.name%TYPE := 'R_STATREP_GROUP_EXT';
/** Process path parameter names - Report for FI*/
c_ppp_r_for_fi                 CONSTANT tp_proc_path_param.name%TYPE := 'R_FOR_FI';
/** Process path parameter names - Output file unique reference*/
c_ppp_file_ref                 CONSTANT tp_proc_path_param.name%TYPE := 'FILE_REF';
/** Process path parameter names - Output file reference prefix*/
c_ppp_file_ref_prefix          CONSTANT tp_proc_path_param.name%TYPE := 'FILE_REF_PREFIX';
/** Process path parameter names - Original file reference*/
c_ppp_orig_file_ref            CONSTANT tp_proc_path_param.name%TYPE := 'ORIG_FILE_REF';
/** Process path parameter names - Original file date/time*/
c_ppp_orig_file_dttm           CONSTANT tp_proc_path_param.name%TYPE := 'ORIG_FILE_DTTM';
/** Process path parameter names - Original file date/time*/
c_ppp_queued_for_hours_period  CONSTANT tp_proc_path_param.name%TYPE := 'QUEUED_FOR_HOURS_PERIOD';
/** Process path parameter names - DTAZV batches (Interpretation of logical files into batches)*/
c_ppp_dtazv_batches            CONSTANT tp_proc_path_param.name%TYPE := 'DTAZV_BATCHES';
/** Process path parameter names - Clearing partner*/
c_ppp_clearing_partner         CONSTANT tp_proc_path_param.name%TYPE := 'CLEARING_PARTNER';
/** Process path parameter names - Clearing partner*/
c_ppp_bic_count                CONSTANT tp_proc_path_param.name%TYPE := 'BIC_COUNT';
/** Process path parameter names - Participant type*/
c_ppp_participant_type         CONSTANT tp_proc_path_param.name%TYPE := 'PARTICIPANT_TYPE';
/** Process path parameter names - MQ GMA Originator application*/
c_ppp_mq_gma_orig_appl         CONSTANT tp_proc_path_param.name%TYPE := 'MQ_GMA_ORIG_APPL';
/** Process path parameter names - Feedbacked instance ID*/
c_ppp_feedbacked_po_id         CONSTANT tp_proc_path_param.name%TYPE := 'FEEDBACKED_PO_ID';
/** Process path parameter names - Originating system code to which the accounts belong*/
c_ppp_isdw_environment         CONSTANT tp_proc_path_param.name%TYPE := 'ISDW_ENVIRONMENT';
/** Process path parameter names - System or host name where the login ID is valid*/
c_ppp_isdw_system              CONSTANT tp_proc_path_param.name%TYPE := 'ISDW_SYSTEM';
/** Process path parameter names - Cluster name, node name, or token ID etc. for systems that require two fields (System + Node)*/
c_ppp_isdw_node                CONSTANT tp_proc_path_param.name%TYPE := 'ISDW_NODE';
/** Process path parameter names - DD Product Type*/
c_ppp_dd_product_type          CONSTANT tp_proc_path_param.name%TYPE := 'DD_PRODUCT_TYPE';
/** Process path parameter names - DD Mandate Type*/
c_ppp_dd_mandate_type          CONSTANT tp_proc_path_param.name%TYPE := 'DD_MANDATE_TYPE';
/** Process path parameter names - DD Collection Type*/
c_ppp_dd_collection_type       CONSTANT tp_proc_path_param.name%TYPE := 'DD_COLLECTION_TYPE';
/** Process path parameter names - DD Business Status*/
c_ppp_dd_business_status       CONSTANT tp_proc_path_param.name%TYPE := 'DD_BUSINESS_STATUS';
/** Process path parameter names - DD Sequence Status*/
c_ppp_dd_sequence_type         CONSTANT tp_proc_path_param.name%TYPE := 'DD_SEQUENCE_TYPE';
/** Process path parameter names - FRC Result*/
c_ppp_frc_result               CONSTANT tp_proc_path_param.name%TYPE := 'FRC_RESULT';
/** Process path parameter names - Number of files uploaded from client*/
c_ppp_client_upload_files_num  CONSTANT tp_proc_path_param.name%TYPE := 'CLIENT_UPLOAD_FILES_NUM';
/** Process path parameter names - Batch duplicate check*/
c_ppp_batch_dupl_check         CONSTANT tp_proc_path_param.name%TYPE := 'BATCH_DUPL_CHECK';
/** Process path parameter names - Use additional subdirectories in Archive directory*/
c_ppp_arc_use_subdirs          CONSTANT tp_proc_path_param.name%TYPE := 'ARC_USE_SUBDIRS';
/** Process path parameter names - Envelope generator class*/
c_ppp_envelope_generator       CONSTANT tp_proc_path_param.name%TYPE := 'ENVELOPE_GENERATOR';
/** Process path parameter names - Perform safety check*/
c_ppp_perform_safety_check     CONSTANT tp_proc_path_param.name%TYPE := 'PERFORM_SAFETY_CHECK';
/** Process path parameter names - Date from*/
c_ppp_date_from                CONSTANT tp_proc_path_param.name%TYPE := 'DATE_FROM';
/** Process path parameter names - Date to*/
c_ppp_date_to                  CONSTANT tp_proc_path_param.name%TYPE := 'DATE_TO';
/** Process path parameter names - max nbr of records*/
c_ppp_max_nbr_records          CONSTANT tp_proc_path_param.name%TYPE := 'MAX_NBR_RECORDS';
/** Process path parameter names - access channel ident*/
c_ppp_access_channel_ident     CONSTANT tp_proc_path_param.name%TYPE := 'ACCESS_CHANNEL_IDENT';
/** Process path parameter names - experted rows count*/
c_ppp_exp_rows_count           CONSTANT tp_proc_path_param.name%TYPE := 'EXP_ROWS_COUNT';
/** Process path parameter names - Booking session ID 1*/
c_ppp_book_session_id_1        CONSTANT tp_proc_path_param.name%TYPE := 'BOOK_SESSION_ID_1';
/** Process path parameter names - Booking session ID 2*/
c_ppp_book_session_id_2        CONSTANT tp_proc_path_param.name%TYPE := 'BOOK_SESSION_ID_2';
/** Process path parameter names - Enable usage of modified/debug file format*/
c_ppp_use_debug_format         CONSTANT tp_proc_path_param.name%TYPE := 'USE_DEBUG_FORMAT';

/** Process path parameter names - XSD_REVISION */
c_ppp_xsd_revision             CONSTANT tp_proc_path_param.name%TYPE := 'XSD_REVISION';

/** Process path parameter names - Email adresses*/
c_ppp_email_notif_recipients   CONSTANT tp_proc_path_param.name%TYPE := 'EMAIL_NOTIF_RECIPIENTS';
/** Process path parameter names - Email subject*/
c_ppp_email_notif_subject      CONSTANT tp_proc_path_param.name%TYPE := 'EMAIL_NOTIF_SUBJECT';
/** Process path parameter names - Email body*/
c_ppp_email_notif_body         CONSTANT tp_proc_path_param.name%TYPE := 'EMAIL_NOTIF_BODY';
/** Process path parameter names - Email attachment file mask*/
c_ppp_email_notif_attch_mask   CONSTANT tp_proc_path_param.name%TYPE := 'EMAIL_NOTIF_ATTCH_MASK';
/** Process path parameter names - Send without attachment?*/
c_ppp_email_send_no_attch      CONSTANT tp_proc_path_param.name%TYPE := 'EMAIL_SEND_NO_ATTCH';
/** Process path parameter names - Email template*/
c_ppp_email_template           CONSTANT tp_proc_path_param.name%TYPE := 'EMAIL_TEMPLATE';
/** Process path parameter names - Smtp server*/
c_ppp_smtp_server              CONSTANT tp_proc_path_param.name%TYPE := 'SMTP_SERVER';
/**Process path parameter names - Report file id*/
c_ppp_reported_file_id         CONSTANT tp_proc_path_param.name%TYPE := 'REPORTED_FILE_ID';
/**Process path parameter names - Report file id*/
c_ppp_or_validate              CONSTANT tp_proc_path_param.name%TYPE := 'OR_VALIDATE';
/**Process path parameter names - List of Static data*/
c_ppp_stat_data_list           CONSTANT tp_proc_path_param.name%TYPE := 'STATIC_DATA_LIST';
/** Process path parameter names - Relaxed format*/
c_ppp_relaxed_format           CONSTANT tp_proc_path_param.name%TYPE := 'RELAXED_FORMAT';
/** Process path parameter names - Round Robbin MAX Value*/
c_ppp_rr_max_value             CONSTANT tp_proc_path_param.name%TYPE := 'RR_MAX_VALUE';
/** Process path parameter names - message_file_type*/
c_ppp_message_file_type        CONSTANT tp_proc_path_param.name%TYPE := 'MESSAGE_FILE_TYPE';
/** Process path parameter names - Entity type*/
c_ppp_entity_type              CONSTANT tp_proc_path_param.name%TYPE := 'ENTITY_TYPE';
/** Process path parameter names - ZIP encrypted*/
c_ppp_zip_encrypted            CONSTANT tp_proc_path_param.name%TYPE := 'ZIP_ENCRYPTED';
/** Process path parameter names - ZIP password*/
c_ppp_zip_password             CONSTANT tp_proc_path_param.name%TYPE := 'ZIP_PASSWORD';
/** Process path parameter names - ZIP encryption method*/
c_ppp_zip_encrypt_method       CONSTANT tp_proc_path_param.name%TYPE := 'ZIP_ENCRYPTION_METHOD';
/** Process path parameter names - ZIP encryption AES strong*/
c_ppp_zip_encrypt_aes_strong   CONSTANT tp_proc_path_param.name%TYPE := 'ZIP_ENCRYPTION_AES_STRONG';
/** Process path parameter names - Input/output channels - Interface name */
c_ppp_interface_name           CONSTANT tp_proc_path_param.name%TYPE := 'INTERFACE_NAME';

/** Process path parameter names - status_channel*/
c_ppp_status_channel           CONSTANT tp_proc_path_param.name%TYPE := 'STATUS_CHANNEL';
/** Process path parameter names - MQ message queue name*/
c_ppp_msg_queue_name           CONSTANT tp_proc_path_param.name%TYPE := 'MSG_QUEUE_NAME';
/** Process path parameter names - Message queue manager connection*/
c_ppp_msg_qm_connection        CONSTANT tp_proc_path_param.name%TYPE := 'MSG_QM_CONNECTION';

/*parameters for o_sys_hq_mandates_dbdi channel*/
/** Path parameter name*/
c_ppp_synchronisation_type     CONSTANT tp_proc_path_param.name%TYPE := 'SYNCHRONISATION_TYPE';
/** Report type - mandates to report*/
c_ppp_syn_type_full            CONSTANT tp_proc_path_param_value.text_value%TYPE := 'F';
/** Report type - mandates with modified enrichment request*/
c_ppp_syn_type_increment       CONSTANT tp_proc_path_param_value.text_value%TYPE := 'I';

/*parameters for o_sys_ctab_export channel*/
/** Codetable name*/
c_ppp_ctab_name                CONSTANT tp_proc_path_param.name%TYPE := 'CTAB_NAME';



c_ppp_fix_file_format_scope    CONSTANT tp_proc_path_param.name%TYPE := 'FIX_FILE_FORMAT_SCOPE';
c_ppp_fix_file_fmt_step_name   CONSTANT tp_proc_path_param.name%TYPE := 'FIX_FILE_FORMAT_STEP_NAME';

c_ppp_lebe_id                  CONSTANT tp_proc_path_param.name%TYPE := 'LEBE_ID';
c_ppp_mode                     CONSTANT tp_proc_path_param.name%TYPE := 'MODE';

c_ppp_col_delimiter            CONSTANT tp_proc_path_param.name%TYPE := 'COLUMN_DELIMITER';
c_ppp_txt_qualifier            CONSTANT tp_proc_path_param.name%TYPE := 'TEXT_QUALIFIER';

c_ppp_user_login_names         CONSTANT tp_proc_path_param.name%TYPE := 'USER_LOGIN_NAMES';

/** Process path parameter names - filepart_rename*/
c_ppp_filepart_rename          CONSTANT tp_proc_path_param.name%TYPE := 'FILEPART_RENAME';
/** Process path parameter names - filepart_rename_suffix*/
c_ppp_filepart_rename_suffix   CONSTANT tp_proc_path_param.name%TYPE := 'FILEPART_RENAME_SUFFIX';

-- Common process step property names
/** Process step property names - Input channels - XML parser object*/
c_ps_prop_ich_parser_object    CONSTANT tp_proc_step_property.name%TYPE := 'ICH_PARSER_OBJECT';
/** Process step property names - Processing nodes - Accounting event*/
c_ps_prop_acc_event            CONSTANT tp_proc_step_property.name%TYPE := 'ACC_EVENT';
/** Process step property names - Input channels - CCI type*/
c_ps_prop_cci_type             CONSTANT tp_proc_step_property.name%TYPE := 'CCI_TYPE';
/** Process step property names - Transactions Type Mask*/
c_ps_prop_tt_mask              CONSTANT tp_proc_step_property.name%TYPE := 'TT_MASK';
/** Process step property names - Input channels - format name to process */
c_ps_prop_ich_format_name      CONSTANT tp_proc_step_property.name%TYPE := 'ICH_FORMAT_NAME';
/** Process step property names - Other path name*/
c_ps_other_path_name           CONSTANT tp_proc_step_property.name%TYPE := 'OTHER_PATH_NAME';
/** Process step property names - Exectable command*/
c_ps_prop_executable           CONSTANT tp_proc_step_property.name%TYPE := 'EXECUTABLE';
/** Process step property names - Switch On/OFF for Exectable command*/
c_ps_prop_executable_switch    CONSTANT tp_proc_step_property.name%TYPE := 'EXECUTABLE_SWITCH';
/** Process step property names - Destination queue suffix*/
c_ps_dest_queue_suffix         CONSTANT tp_proc_step_property.name%TYPE := 'DEST_QUEUE_SUFFIX';
/** Process step property names - Input channel name*/
c_ps_ich_name_list             CONSTANT tp_proc_step_property.name%TYPE := 'ICH_NAME_LIST';
/** Process step property names - Payment status*/
c_ps_payment_status            CONSTANT tp_proc_step_property.name%TYPE := 'PAYMENT_STATUS';
/** Process step property names - Payment reason*/
c_ps_payment_reason            CONSTANT tp_proc_step_property.name%TYPE := 'PAYMENT_REASON';
/** Process step property names - Full GPI only*/
c_ps_full_gpi_only             CONSTANT tp_proc_step_property.name%TYPE := 'FULL_GPI_ONLY';
/** Process step property names - WS status*/
c_ps_ws_status                 CONSTANT tp_proc_step_property.name%TYPE := 'WS_STATUS';
/** Process step property names - channel name*/
c_ps_prop_channel_name         CONSTANT tp_proc_step_property.name%TYPE := 'CHANNEL_NAME';
/** Process step property names - Validation workflow name*/
c_ps_prop_vwf_name             CONSTANT tp_proc_step_property.name%TYPE := 'VWF_NAME';
/** Process step property names - Transaction type mask*/
c_ps_prop_trn_type_mask        CONSTANT tp_proc_step_property.name%TYPE := 'TRN_TYPE_MASK';
/** Process step property names - node name*/
c_ps_prop_node_name            CONSTANT tp_proc_step_property.name%TYPE := 'NODE_NAME';
/** Process step property names - online workflow name*/
c_ps_prop_online_workflow      CONSTANT tp_proc_step_property.name%TYPE := 'ONLINE_WORKFLOW';

/** Trn type mask */
c_ppp_trn_type_filter          CONSTANT tp_proc_path_param.name%TYPE := 'TRN_TYPE_FILTER';
/** Cpty backend list */
c_ppp_cp_backend               CONSTANT tp_proc_path_param.name%TYPE := 'CP_BACKEND';
/** Opty backend list */
c_ppp_or_backend               CONSTANT tp_proc_path_param.name%TYPE := 'OR_BACKEND';
/** Cpty clearing partner */
c_ppp_cp_clearing_partner      CONSTANT tp_proc_path_param.name%TYPE := 'CP_CLEARING_PARTNER';
/** Opty clearing partner */
c_ppp_or_clearing_partner      CONSTANT tp_proc_path_param.name%TYPE := 'OR_CLEARING_PARTNER';
/** Input channel id */
c_ppp_po_id_in                 CONSTANT tp_proc_path_param.name%TYPE := 'PO_ID_IN';
/** Output channel id */
c_ppp_po_id_out                CONSTANT tp_proc_path_param.name%TYPE := 'PO_ID_OUT';
/** Input/creation cut-off minimum time */
c_ppp_in_cr_min_cut_off_time   CONSTANT tp_proc_path_param.name%TYPE := 'INPUT_CREATE_CUT_OFF_MIN_TIME';
/** Input/creation cut-off maximum time */
c_ppp_in_cr_max_cut_off_time   CONSTANT tp_proc_path_param.name%TYPE := 'INPUT_CREATE_CUT_OFF_MAX_TIME';
/** Input/creation cut-off time */
c_ppp_in_cr_cut_off_time       CONSTANT tp_proc_path_param.name%TYPE := 'INPUT_CREATE_CUT_OFF_TIME';
/** Output cut-off time */
c_ppp_out_cut_off_time         CONSTANT tp_proc_path_param.name%TYPE := 'OUTPUT_CUT_OFF_TIME';
/** Queued transactions */
c_ppp_tran_queued              CONSTANT tp_proc_path_param.name%TYPE := 'TRAN_QUEUED';
/** Current Accounting Date*/
c_ppp_current_acc_date         CONSTANT tp_proc_path_param.name%TYPE := 'CURRENT_ACC_DATE';
/** Life Stage */
c_ppp_lifecycle                CONSTANT tp_proc_path_param.name%TYPE := 'LIFECYCLE';
/** Connection URL*/
c_ppp_conn_url                 CONSTANT tp_proc_path_param.name%TYPE := 'CONNECTION_URL';
/** Proc path parameter - Currency */
c_ppp_currency                 CONSTANT tp_proc_path_param.name%TYPE := 'CURRENCY';

-- Input channels duplicate check methods
/** Input channels - duplicate check method - no check*/
c_ich_duplchk_method_none      CONSTANT adm_sys_param_value.text_value%TYPE := 'NONE';
/** Input channels - duplicate check method - by file name*/
c_ich_duplchk_method_name      CONSTANT adm_sys_param_value.text_value%TYPE := 'FILENAME';
/** Input channels - duplicate check method - by hash of file contents*/
c_ich_duplchk_method_hash      CONSTANT adm_sys_param_value.text_value%TYPE := 'HASH';
/** Input channels - duplicate check method - by both file name and hash of file contents*/
c_ich_duplchk_method_namehash  CONSTANT adm_sys_param_value.text_value%TYPE := 'FILENAME_AND_HASH';


-- Character sets for external tables data files
/** Character set - Win1250 */
c_charset_win1250              CONSTANT VARCHAR2(20) := 'ee8mswin1250';
/** Character set - UTF-8 */
c_charset_utf8                 CONSTANT VARCHAR2(20) := 'al32utf8';
/** Character set - ISO 8859-1 */
c_charset_8859_1               CONSTANT VARCHAR2(20) := 'we8iso8859p1';
/** Character set - ISO 8859-2 */
c_charset_8859_2               CONSTANT VARCHAR2(20) := 'ee8iso8859p2';
/** Character set - CP 852 */
c_charset_CP852                CONSTANT VARCHAR2(20) := 'ee8pc852';
/** Character set - EBCDIC870 */
c_charset_EBCDIC870            CONSTANT VARCHAR2(20) := 'EE8EBCDIC870';

--Record delimiters for external tables data files
/** Record delimited - for pure CSV data files*/
c_record_delim_for_pure_csv    CONSTANT VARCHAR2(30) := 'X''0A''';
/** Record delimited - for CSV temporary files of XML data files*/
c_record_delim_for_csv_of_xml  CONSTANT VARCHAR2(30) := 'X''000A''';


--Input storage types of input channels
/** Input storage type - filesystem */
c_input_storage_type_fs        CONSTANT adm_domain_value.text_value%TYPE := 'FS';
/** Input storage type - mailbox */
c_input_storage_type_mb        CONSTANT adm_domain_value.text_value%TYPE := 'MB';
/** Input storage type - database */
c_input_storage_type_db        CONSTANT adm_domain_value.text_value%TYPE := 'DB';
/** Input storage type - MQ */
c_input_storage_type_mq        CONSTANT adm_domain_value.text_value%TYPE := 'MQ';
/** Input storage type - Kafka */
c_input_storage_type_kafka     CONSTANT adm_domain_value.text_value%TYPE := 'KF';

--Process queue semantic suffixes
/**Process queue semantic suffix - Manual*/
c_proc_queue_suffix_manual     CONSTANT tp_proc_queue.name%TYPE := 'MANUAL';
/**Process queue semantic suffix - Verify*/
c_proc_queue_suffix_verify     CONSTANT tp_proc_queue.name%TYPE := 'VERIFY';
/**Process queue semantic suffix - Wait*/
c_proc_queue_suffix_wait       CONSTANT tp_proc_queue.name%TYPE := 'WAIT';
/**Process queue semantic suffix - Input*/
c_proc_queue_suffix_input      CONSTANT tp_proc_queue.name%TYPE := 'INPUT';
/**Process queue semantic suffix - Archive*/
c_proc_queue_suffix_archive    CONSTANT tp_proc_queue.name%TYPE := 'ARCHIVE';
/**Process queue semantic suffix - Ready*/
c_proc_queue_suffix_ready      CONSTANT tp_proc_queue.name%TYPE := 'READY';
/**Process queue semantic suffix - Standby*/
c_proc_queue_suffix_standby    CONSTANT tp_proc_queue.name%TYPE := 'STANDBY';
/**Process queue semantic suffix - Bookings Wait*/
c_proc_queue_suffix_bk_wait    CONSTANT tp_proc_queue.name%TYPE := 'BK_WAIT';
/**Process queue semantic suffix - Bookings Standby*/
c_proc_queue_suffix_bk_standby CONSTANT tp_proc_queue.name%TYPE := 'BK_STANDBY';
/**Process queue semantic suffix - Bookings Archive*/
c_proc_queue_suffix_bk_archive CONSTANT tp_proc_queue.name%TYPE := 'BK_ARCHIVE';
/**Process queue semantic suffix - Hold*/
c_proc_queue_suffix_hold       CONSTANT tp_proc_queue.name%TYPE := 'HOLD';
/**Process queue semantic suffix - Defer*/
c_proc_queue_suffix_defer      CONSTANT tp_proc_queue.name%TYPE := 'DEFER';

--Special charaters
/** Process node-suffix delimeter*/
c_proc_node_queue_suffix_delim CONSTANT tp_proc_queue.name%TYPE :='_';

--Process queues generally for process objects
/**Process object queues - manual*/
c_proc_queue_po_manual         CONSTANT tp_proc_queue.name%TYPE := 'PO'||c_proc_node_queue_suffix_delim||c_proc_queue_suffix_manual;
/**Process object queues - verify*/
c_proc_queue_po_verify         CONSTANT tp_proc_queue.name%TYPE := 'PO'||c_proc_node_queue_suffix_delim||c_proc_queue_suffix_verify;
/**Process object queues - wait*/
c_proc_queue_po_wait           CONSTANT tp_proc_queue.name%TYPE := 'PO'||c_proc_node_queue_suffix_delim||c_proc_queue_suffix_wait;

/**Online processing queues - wait*/
c_proc_queue_online_wait       CONSTANT tp_proc_queue.name%TYPE := 'ONLINE'||c_proc_node_queue_suffix_delim||c_proc_queue_suffix_wait;
/**Online processing queues - manual*/
c_proc_queue_online_manual     CONSTANT tp_proc_queue.name%TYPE := 'ONLINE'||c_proc_node_queue_suffix_delim||c_proc_queue_suffix_manual;
/**Online processing queues - verify*/
c_proc_queue_online_verify     CONSTANT tp_proc_queue.name%TYPE := 'ONLINE'||c_proc_node_queue_suffix_delim||c_proc_queue_suffix_verify;
/**Process node queues - ONLINE archive*/
c_proc_queue_online_archive    CONSTANT tp_proc_queue.name%TYPE := 'ONLINE'||c_proc_node_queue_suffix_delim||c_proc_queue_suffix_archive;
/**Process node queues - ONLINE Correction*/
c_proc_queue_online_defer      CONSTANT tp_proc_queue.name%TYPE := 'ONLINE'||c_proc_node_queue_suffix_delim||c_proc_queue_suffix_defer;

--Manual activities common well-known names
/** Manual activity name - approval of the 2nd operator*/
c_ma_approve                   CONSTANT tp_manual_activity_exec_obj.name%TYPE := 'APPROVE';
/** Manual activity name - refusal of the 2nd operator*/
c_ma_refuse                    CONSTANT tp_manual_activity_exec_obj.name%TYPE := 'REFUSE';
/** Manual activity name - request run of processing object*/
c_ma_request_run               CONSTANT tp_manual_activity_exec_obj.name%TYPE := 'REQUEST_RUN';
/** Manual activity name - continue run of process object*/
c_ma_continue                  CONSTANT tp_manual_activity_exec_obj.name%TYPE := 'CONTINUE';
/** Manual activity name - cancel run of process object*/
c_ma_cancel                    CONSTANT tp_manual_activity_exec_obj.name%TYPE := 'CANCEL';
/** Manual activity name - request archivation of trans/batch*/
c_ma_archive                   CONSTANT tp_manual_activity_exec_obj.name%TYPE := 'ARCHIVE';
/** Manual activity name - creation of a new record*/
c_ma_new                       CONSTANT tp_manual_activity_exec_obj.name%TYPE := 'NEW';
/** Manual activity name - edit of a new record*/
c_ma_edit                      CONSTANT tp_manual_activity_exec_obj.name%TYPE := 'EDIT';
/** Manual activity name - a new/edited record submit for approval*/
c_ma_submit                    CONSTANT tp_manual_activity_exec_obj.name%TYPE := 'TO_APPROVE';
/** Manual activity name - creation of a new single transaction*/
c_ma_new_single_tx             CONSTANT tp_manual_activity_exec_obj.name%TYPE := 'NEW_SINGLE_TX';


-- Common process step property names
/** Process step property names - General - Queue reason*/
c_ps_prop_queue_reason         CONSTANT tp_proc_step_property.name%TYPE := 'QUEUE_REASON';
/** Process step property names - General - Queue name*/
c_ps_prop_queue_name           CONSTANT tp_proc_step_property.name%TYPE := 'QUEUE_NAME';
/** Process step property names - General - Block processing group?*/
c_ps_prop_block_pg             CONSTANT tp_proc_step_property.name%TYPE := 'BLOCK_PG';
/** Process step property names - General - Wait-until time in seconds*/
c_ps_prop_wait_until_secs      CONSTANT tp_proc_step_property.name%TYPE := 'WAIT_UNTIL_SECS';
/** Process step property names - General - Commit after online step*/
c_ps_prop_online_commit        CONSTANT tp_proc_step_property.name%TYPE := 'ONLINE_COMMIT';

/** Process step property names - Workflow - path name */
c_ps_prop_path                 CONSTANT VARCHAR2(30) := 'PATH';
/** Process step property names - Workflow - step name */
c_ps_prop_step                 CONSTANT VARCHAR2(30) := 'STEP';
/** Process step property names - Workflow - action */
c_ps_prop_action               CONSTANT VARCHAR2(30) := 'ACTION';


--Queue reasons
/** Queue reason - process object run to be started*/
c_queue_reason_run             CONSTANT VARCHAR2(3) := 'RUN';
/** Queue reason - process object run is blocked*/
c_queue_reason_block           CONSTANT VARCHAR2(3) := 'BLK';
/** Queue reason - process object run to continue*/
c_queue_reason_continue        CONSTANT VARCHAR2(3) := 'CTN';
/** Queue reason - process object run to be cancelled*/
c_queue_reason_cancel          CONSTANT VARCHAR2(3) := 'CNC';
/** Queue reason - archive*/
c_queue_reason_archive         CONSTANT VARCHAR2(3) := 'ARC';
/** Queue reason - process group is blocked by channel that created it*/
c_queue_reason_block_pg_by_ch  CONSTANT VARCHAR2(3) := 'BPG';
/** Queue reason - process object fails to error*/
c_queue_reason_error           CONSTANT VARCHAR2(3) := 'ERR';
/** Queue reason - process object considered duplicate*/
c_queue_reason_duplicate       CONSTANT VARCHAR2(3) := 'DUP';
/** Queue reason - online processing*/
c_queue_reason_online_process  CONSTANT VARCHAR2(3) := 'OLP';
/** Queue reason - cancelled online processing*/
c_queue_reason_cancel_olp      CONSTANT VARCHAR2(3) := 'COP';
/** Queue reason - release*/
c_queue_reason_release         CONSTANT VARCHAR2(3) := 'RLS';
/** Queue reason - resend*/
c_queue_reason_resend          CONSTANT VARCHAR2(3) := 'RSN';
/** Queue reason - reinput*/
c_queue_reason_reinput         CONSTANT VARCHAR2(3) := 'RIN';

/** Queue reason - discard*/
c_queue_reason_discard         CONSTANT VARCHAR2(3) := 'DCD';
/** Queue reason - Duplicate transaction candidate*/
c_queue_reason_dupl_tx_cand    CONSTANT VARCHAR2(3) := 'DTC';
/** Queue reason - 2nd r-tran */
c_queue_reason_2nd_r_tran      CONSTANT VARCHAR2(3) := '2RT';
/** Queue reason - status tran reject */
c_queue_reason_status_tran_rej CONSTANT VARCHAR2(3) := 'STR';
/** Queue reason - status file reject */
c_queue_reason_status_file_rej CONSTANT VARCHAR2(3) := 'SFR';
/** Queue reason - unmatched */
c_queue_reason_unmatched       CONSTANT VARCHAR2(3) := 'UNM';
/** Queue reason - settlement pending */
c_queue_reason_sett_pending    CONSTANT VARCHAR2(3) := 'SEP';
/** Queue reason - date out of range*/
c_queue_reason_dt_out_of_rng   CONSTANT VARCHAR2(3) := 'DOR';
/** Queue reason - invalid currency */
c_queue_reason_invalid_ccy     CONSTANT VARCHAR2(3) := 'CCY';
/** Queue reason - Invalid Opty account identifier (IBAN or local ident) */
c_queue_reason_inval_or_acc    CONSTANT VARCHAR2(3) := 'IOA';
/** Queue reason -  Closed Opty account*/
c_queue_reason_closed_or_acc   CONSTANT VARCHAR2(3) := 'COA';
/** Queue reason -  Blocked Opty account*/
c_queue_reason_blocked_or_acc  CONSTANT VARCHAR2(3) := 'BOA';
/** Queue reason - warehoused */
c_queue_reason_warehoused      CONSTANT VARCHAR2(3) := 'WRH';
/** Queue reason - Invalid Cpty account (IBAN or local ident)*/
c_queue_reason_inval_cp_acc    CONSTANT VARCHAR2(3) := 'ICA';
/** Queue reason - Invalid Cpty BIC */
c_queue_reason_inval_cp_bic    CONSTANT VARCHAR2(3) := 'ICB';
/** Queue reason - future settlement date */
c_queue_reason_future_sett_dt  CONSTANT VARCHAR2(3) := 'FSD';
/** Queue reason - future value date */
c_queue_reason_future_value_dt CONSTANT VARCHAR2(3) := 'FVD';
/** Queue reason - for distribution */
c_queue_reason_for_distrib     CONSTANT VARCHAR2(3) := 'DST';
/** Queue reason - name number check failed */
c_queue_reason_nnc_failed      CONSTANT VARCHAR2(3) := 'NNC';
/** Queue reason - unroutable */
c_queue_reason_unroutable      CONSTANT VARCHAR2(3) := 'UNR';
/** Queue reason - roundtrip */
c_queue_reason_roundtrip       CONSTANT VARCHAR2(3) := 'RND';
/** Queue reason - unknown account */
c_queue_reason_unknown_account CONSTANT VARCHAR2(3) := 'UAC';
/** Queue reason - ambigous account number */
c_queue_reason_ambigous_acc    CONSTANT VARCHAR2(3) := 'AAI';
/** Queue reason - closed account */
c_queue_reason_closed_account  CONSTANT VARCHAR2(3) := 'CAC';
/** Queue reason - blocked account */
c_queue_reason_blocked_account CONSTANT VARCHAR2(3) := 'BAC';
/** Queue reason - registered */
c_queue_reason_registered      CONSTANT VARCHAR2(3) := 'RGR';
/** Queue reason - invalid ordering party*/
c_queue_reason_invalid_opty    CONSTANT VARCHAR2(3) := 'IOP';
/** Queue reason - FX rate missing*/
c_queue_reason_fx_rate_missing CONSTANT VARCHAR2(3) := 'FXR';
/** Queue reason - FX rate individual*/
c_queue_reason_fx_ind_rate     CONSTANT VARCHAR2(3) := 'FXI';
/** Queue reason - FX rate tolerance*/
c_queue_reason_fx_ind_rt_toler CONSTANT VARCHAR2(3) := 'FXT';
/** Queue reason - Payment stop*/
c_queue_reason_payment_stop    CONSTANT VARCHAR2(3) := 'PST';
/** Queue reason - Amount less than BEN charge*/
c_queue_reason_ben_charge      CONSTANT VARCHAR2(3) := 'BEN';
/** Queue reason - MT Fields check */
c_queue_reason_mt_fields_check CONSTANT VARCHAR2(3) := 'FCH';
/** Queue reason - PDE (Duplicate message from SWIFT) */
c_queue_reason_dupl_msg_entry  CONSTANT VARCHAR2(3) := 'PDE';
/** Queue reason - Unknown correspondent */
c_queue_reason_unknown_corresp CONSTANT VARCHAR2(3) := 'COR';
/** Queue reason - Cancellation by client */
c_queue_reason_canc_by_client  CONSTANT VARCHAR2(3) := 'CAN';
/** Queue reason - Cancellation by bank */
c_queue_reason_canc_by_bank    CONSTANT VARCHAR2(3) := 'CNB';
/** Queue reason - recall request issued */
c_queue_reason_issued          CONSTANT VARCHAR2(3) := 'IUD';
/** Queue reason - recal request overdue */
c_queue_reason_overdue         CONSTANT VARCHAR2(3) := 'OVD';
/** Queue reason - reply on recall request is issued*/
c_queue_reason_reply_issued    CONSTANT VARCHAR2(3) := 'RIS';
/** Queue reason - recall request received */
c_queue_reason_rec_received    CONSTANT VARCHAR2(3) := 'RCV';
/** Queue reason - recall request is being processed*/
c_queue_reason_being_processed CONSTANT VARCHAR2(3) := 'BPR';
/** Queue reason - duplicate recall request*/
c_queue_reason_dupl_recall_rq  CONSTANT VARCHAR2(3) := 'DRE';
/** Queue reason - manual capture input */
c_queue_reason_mc_input        CONSTANT VARCHAR2(3) := 'MCI';
/** Queue reason - manual capture ready */
c_queue_reason_mc_ready        CONSTANT VARCHAR2(3) := 'MCR';
/** Queue reason - manual capture deleted */
c_queue_reason_mc_deleted      CONSTANT VARCHAR2(3) := 'MCD';
/** Queue reason - manual capture refused */
c_queue_reason_mc_refused      CONSTANT VARCHAR2(3) := 'MCF';
/** Queue reason - manual capture copy */
c_queue_reason_mc_copy         CONSTANT VARCHAR2(3) := 'MCC';
/** Queue reason - manual capture for correction */
c_queue_reason_mc_correction   CONSTANT VARCHAR2(3) := 'MCO';
/** Queue reason - Return*/
c_queue_reason_return          CONSTANT VARCHAR2(3) := 'RET';
/** Queue reason - not sufficient funds */
c_queue_reason_nsf             CONSTANT VARCHAR2(3) := 'NSF';
/** Queue reason - for authorization */
c_queue_reason_auth            CONSTANT VARCHAR2(3) := 'ATH';
/** Queue reason - cheque detect */
c_queue_reason_chq             CONSTANT VARCHAR2(3) := 'CHQ';
/** Queue reason - waiting for cover */
c_queue_reason_cov             CONSTANT VARCHAR2(3) := 'COV';
/** Queue reason - hold */
c_queue_reason_hld             CONSTANT VARCHAR2(3) := 'HLD';
/** Queue reason -  Gpi required*/
c_queue_reason_gpi             CONSTANT VARCHAR2(3) := 'GPI';
/** Queue reason - payment already returned */
c_queue_reason_already_return  CONSTANT VARCHAR2(3) := 'ART';
/** Queue reason - not authorized */
c_queue_reason_not_authorized  CONSTANT VARCHAR2(3) := 'NAU';
/** Queue reason - Reject immediate*/
c_queue_reason_reject_imm      CONSTANT VARCHAR2(3) := 'RJM';
/** Queue reason -  obligor limit exceeded*/
c_queue_reason_ob_limit_exceed CONSTANT VARCHAR2(3) := 'OLE';
/** Queue reason - Reject*/
c_queue_reason_reject          CONSTANT VARCHAR2(3) := 'RJC';
/** Queue reason - Mandate expired*/
c_queue_reason_mandate_expired CONSTANT VARCHAR2(3) := 'EXP';
/** Queue reason - Incorrect sequence*/
c_queue_reason_incorr_sequence CONSTANT VARCHAR2(3) := 'INS';
/** Queue reason - Reject/Return*/
c_queue_reason_reject_return   CONSTANT VARCHAR2(3) := 'RRE';
/** Queue reason - Cancellation internal*/
c_queue_reason_cancel_internal CONSTANT VARCHAR2(3) := 'CNI';
/** Queue reason - revocation overdue */
c_queue_reason_revoc_overdue   CONSTANT VARCHAR2(3) := 'RVO';
/** Queue reason - Outstanding predecessor*/
c_queue_reason_outstd_pred     CONSTANT VARCHAR2(3) := 'OUP';
/** Queue reason - Cancellation from warehouse */
c_queue_reason_cancel_from_wh  CONSTANT VARCHAR2(3) := 'CFW';
/** Queue reason - Mandate Ref not matched */
c_queue_reason_mand_ref_match  CONSTANT VARCHAR2(3) := 'MRN';
/** Queue reason - Invalid Reason code*/
c_queue_reason_inval_rsn_code  CONSTANT VARCHAR2(3) := 'IRC';
/** Queue reason - no DD permission*/
c_queue_reason_no_dd_perm      CONSTANT VARCHAR2(3) := 'NDP';
/** Queue reason - No original instruction */
c_queue_reason_no_orig_instr   CONSTANT VARCHAR2(3) := 'NOI';
/** Queue reason - Late cancellation request*/
c_queue_reason_late_cancel_req CONSTANT VARCHAR2(3) := 'LCR';
/** Queue reason - Instruction outstanding*/
c_queue_reason_instr_outstand  CONSTANT VARCHAR2(3) := 'OIO';
/** Queue reason - Cancellation/Reversal*/
c_queue_reason_canc_reversal   CONSTANT VARCHAR2(3) := 'CRV';
/** Queue reason - Archive initial and R-tx*/
c_queue_reason_arc_init_r_tx   CONSTANT VARCHAR2(3) := 'AIR';
/** Queue reason - Outward Validations Error */
c_queue_reason_outw_val_error  CONSTANT VARCHAR2(3) := 'OWE';
/** Queue reason - Counter Party Validations Error */
c_queue_reason_cpty_val_error  CONSTANT VARCHAR2(3) := 'CRE';
/** Queue reason - Interbank Charges */
c_queue_reason_interbank_chrgs CONSTANT VARCHAR2(3) := 'CHG';
/** Queue reason - Outward Payment Re-check */
c_queue_reason_outw_recheck    CONSTANT VARCHAR2(3) := 'OPR';
/** Queue reason - Repair and recheck*/
c_queue_reason_outw_repair     CONSTANT VARCHAR2(3) := 'ORP';
/** Queue reason - Cross-entity distribution */
c_queue_reason_cross_ent_dist  CONSTANT VARCHAR2(3) := 'CED';
/** Queue reason - Ordering Party Validations Error */
c_queue_reason_opty_val_error  CONSTANT VARCHAR2(3) := 'ORE';
/** Queue reason - Ordering Party Identifier Error */
c_queue_reason_ambigous_prty   CONSTANT VARCHAR2(3) := 'API';
/** Queue reason - APS Possible Duplicate Emission */
c_queue_reason_ade_chk_emsn    CONSTANT VARCHAR2(3) := 'ADE';
/** Queue reason - Duplicate Acct Event Transaction */
c_queue_reason_dupl_acc_ev_tx  CONSTANT VARCHAR2(3) := 'DTA';
/** Queue reason - Acct Event Transaction Ready */
c_queue_reason_acc_ev_tx_ready CONSTANT VARCHAR2(3) := 'AER';
/** Queue reason - Payment Expected */
c_queue_reason_pay_expected    CONSTANT VARCHAR2(3) := 'PEX';
/** Queue reason - Individual Rate */
c_queue_reason_indv_fx_rate    CONSTANT VARCHAR2(3) := 'FXT';
/** Queue reason - Account Report Pending */
c_queue_reason_acc_rpt_pend    CONSTANT VARCHAR2(3) := 'REP';
/** Queue reason - Wait For Release */
c_queue_reason_wfr             CONSTANT VARCHAR2(3) := 'WFR';
/** Queue reason - Blocked for Manual release */
c_queue_reason_blocked_man_rel CONSTANT VARCHAR2(3) := 'BMR';

--Transactions WS status constants
/*Waiting for authorization*/
c_trans_ws_status_wait_aut     CONSTANT VARCHAR2(4) := 'WAUT';
/*Waiting for release from warehouse*/
c_trans_ws_status_wait_whrel   CONSTANT VARCHAR2(4) := 'WWRH';
/*In processing*/
c_trans_ws_status_processing   CONSTANT VARCHAR2(4) := 'BPRC';
/*Calceled by customer*/
c_trans_ws_status_canc_client  CONSTANT VARCHAR2(4) := 'CANC';
/*Calceled by bank*/
c_trans_ws_status_canc_bank    CONSTANT VARCHAR2(4) := 'CANB';
/*Booked*/
c_trans_ws_status_booked       CONSTANT VARCHAR2(4) := 'BKGD';
/*Waiting for NSF*/
c_trans_ws_status_wait_nsf     CONSTANT VARCHAR2(4) := 'WNSF';
/*Rejected*/
c_trans_ws_status_rejected     CONSTANT VARCHAR2(4) := 'RJCT';


--Other WS related
/** Check for technical duplicates X days back*/
c_ws_tech_dupl_chk_days_back   CONSTANT INTEGER := 6;

--Queue object types
/** Queue object types - process object*/
c_queue_obj_type_proc_object   CONSTANT VARCHAR2(2) := 'PO';
/** Queue object types - transaction*/
c_queue_obj_type_trans         CONSTANT VARCHAR2(2) := 'T';
/** Queue object types - batch*/
c_queue_obj_type_batch         CONSTANT VARCHAR2(2) := 'B';

--
/** History of trans/batch data change by manual activities - values before change*/
c_history_before               CONSTANT trans_history.before_after%TYPE := 'B';
/** History of trans/batch data change by manual activities - values after change*/
c_history_after                CONSTANT trans_history.before_after%TYPE := 'A';

/** manual activity exec obj next step - next*/
c_next_step_next               CONSTANT tp_manual_activity_exec_obj.next_step_name%TYPE := '<NEXT>';
/** manual activity exec obj next step - current*/
c_next_step_current            CONSTANT tp_manual_activity_exec_obj.next_step_name%TYPE := '<CURRENT>';
/** manual activity exec obj next step - first*/
c_next_step_first              CONSTANT tp_manual_activity_exec_obj.next_step_name%TYPE := '<FIRST>';





-- Manual activity property names, values
/** Purpose: Define reason code (source of reqason code) to be used for enqueue operation
      Steps: step_enqueue_rsn_remap
             step_mark_for_cn
     Values: <ACT> - use current reason (T, B - from the object, FLTT - from request)
             <PREV> - use previous queue reason (only T, B)
             _custom_ - use given _custom_ value */
c_map_enqueue_dest_rsn         CONSTANT tp_manual_activity_property.name%TYPE := 'ENQUEUE_DEST_REASON';

/** Purpose: Define target queue (by the suffix relative to the actual queue) to be used for enqueue operation
      Steps: step_enqueue_rsn_remap
             step_mark_for_cn
     Values: any valid queue suffix ('ARCHIVE', 'WAIT', 'VERIFY', ...)  */
c_map_enqueue_dest_q_suffix    CONSTANT tp_manual_activity_property.name%TYPE := 'ENQUEUE_DEST_QUEUE_SUFFIX';

/** Purpose: Define full name of target queue to be used for enqueue operation
      Steps: step_enqueue_rsn_remap
     Values: any valid queue name  */
c_map_enqueue_dest_q_full      CONSTANT tp_manual_activity_property.name%TYPE := 'ENQUEUE_DEST_QUEUE_FULL';

/** Purpose: Enable specific reason remap
   Optional: default = NULL
      Steps: step_enqueue_rsn_remap
             step_mark_for_cn
     Values: NULL - no remap
             'CFW' - should the object be queued with 'WRH' reason, 'CFW' is used instead */
c_map_enqueue_rsn_remap        CONSTANT tp_manual_activity_property.name%TYPE := 'ENQUEUE_RSN_REMAP';

/** Purpose: When enqueuing or releasing batch, enable its transactions to be enqueued / released as well
   Optional: default = 'Y'
      Steps: step_enqueue_rsn_remap
     Values: 'Y' - for each enqueued batch, enqueue its transactions as well
             'N' */
c_map_batch_with_tx            CONSTANT tp_manual_activity_property.name%TYPE := 'BATCH_WITH_TX';

/** Purpose: Batch reference column to use to search for transactions in batch
   Optional: default = NULL
      Steps: step_enqueue_rsn_remap
     Values: column name, e.g. 'BATCH_ID_IN' */
c_map_batch_id_column          CONSTANT tp_manual_activity_property.name%TYPE := 'BATCH_ID_COLUMN';

/** Purpose: Limits the set of transactions to be enqueued
   Optional: default = 'N'
      Steps: step_enqueue_rsn_remap
     Values: 'Y' - only transactions in the same PG / with the same queue and queue reason as the BATCH will be enqueued
             'N' - all transactions within given BATCH will be enqueued */
c_map_batch_tx_same_pg_q_qr    CONSTANT tp_manual_activity_property.name%TYPE := 'BATCH_TX_SAME_PG_Q_QR';

/** Purpose: Define step name within the destination processing path, from which the processing continues
      Steps: step_continue_stp
             step_continue_stp_by_tt
     Values: '<NEXT>' - use the next step on last STP path (n/a in step_continue_stp_by_tt)
             '<CURRENT>' - use current step on the last STP path, from which the object left STP, i.e. perform re-input (n/a in step_continue_stp_by_tt)
             '<FIRST>' - use first step on the target path (only in step_continue_stp_by_tt)
             _custom_ - use given _custom_ step name */
c_map_next_step_name           CONSTANT tp_manual_activity_property.name%TYPE := 'NEXT_STEP_NAME';

/** Purpose: Add queue reason into SKIP_CHECK list for the object
   Optional: default = NULL
      Steps: step_set_skip_check
     Values: _custom_ - add given _custom_ reason code into skip_check list
             NULL - add previous (queue_reason_prev) reason (transactions only, no action for batches) */
c_map_skip_check_reason        CONSTANT tp_manual_activity_property.name%TYPE := 'SKIP_CHECK_REASON';

/** Purpose: Name of online workflow to continue on when releasing trans or batch to STP
   Optional: default = 'Y'
      Steps: step_continue_stp
     Values: name of online workflow processing path */
c_map_next_online_workflow     CONSTANT tp_manual_activity_property.name%TYPE := 'NEXT_ONLINE_WORKFLOW';

c_map_verify_q_reason          CONSTANT tp_manual_activity_property.name%TYPE := 'VERIFY_QUEUE_REASON';
c_map_online_wf_name           CONSTANT tp_manual_activity_property.name%TYPE := 'ONLINE_WF_NAME';
c_map_genexc_proc_name         CONSTANT tp_manual_activity_property.name%TYPE := 'GENEXC_PROC_NAME';
c_map_fee_proc_name            CONSTANT tp_manual_activity_property.name%TYPE := 'FEE_PROC_NAME';
c_map_exc_action_1             CONSTANT tp_manual_activity_property.name%TYPE := 'EXC_ACTION_1';
c_map_rwb_txn_as_batch         CONSTANT tp_manual_activity_property.name%TYPE := 'RWB_TXN_AS_BATCH';
c_map_sync_ref_col_name        CONSTANT tp_manual_activity_property.name%TYPE := 'SYNC_REF_COL_NAME';
c_map_entlog_group_code        CONSTANT tp_manual_activity_property.name%TYPE := 'ENTLOG_GROUP_CODE';
c_map_entlog_group_code_noedit CONSTANT tp_manual_activity_property.name%TYPE := 'ENTLOG_GROUP_CODE_NOEDIT';
c_map_tran_ws_status           CONSTANT tp_manual_activity_property.name%TYPE := 'TRAN_WS_STATUS';


--Process units IDs
/** Process unit ID - processing node - PNEBI*/
c_pu_id_pnebi                  CONSTANT tp_proc_unit.id%TYPE := 10;
/** Process unit ID - processing node - PNCCI*/
c_pu_id_pncci                  CONSTANT tp_proc_unit.id%TYPE := 15;
/** Process unit ID - processing node - PNCCO*/
c_pu_id_pncco                  CONSTANT tp_proc_unit.id%TYPE := 20;
/** Process unit ID - processing node - PNMCI*/
c_pu_id_pnmci                  CONSTANT tp_proc_unit.id%TYPE := 30;
/** Process unit ID - processing node - PNBPO*/
c_pu_id_pnbpo                  CONSTANT tp_proc_unit.id%TYPE := 35;
/** Process unit ID - processing node - PNCLO*/
c_pu_id_pnclo                  CONSTANT tp_proc_unit.id%TYPE := 50;
/** Process unit ID - processing node - PNBKG*/
c_pu_id_pnbkg                  CONSTANT tp_proc_unit.id%TYPE := 55;
/** Process unit ID - processing node - PNATC*/
c_pu_id_pnatc                  CONSTANT tp_proc_unit.id%TYPE := 60;
/** Process unit ID - processing node - PNFLT*/
c_pu_id_pnflt                  CONSTANT tp_proc_unit.id%TYPE := 65;
/** Process unit ID - processing node - PNNCAM*/
c_pu_id_pncam                  CONSTANT tp_proc_unit.id%TYPE := 70;
/** Process unit ID - processing node - PNPFD*/
c_pu_id_pnpfd                  CONSTANT tp_proc_unit.id%TYPE := 75;

--Process units names
/** Process unit name - processing node - PNEBI*/
c_pu_name_pnebi                CONSTANT tp_proc_unit.name%TYPE := 'PNEBI';
/** Process unit name - processing node - PNCCI*/
c_pu_name_pncci                CONSTANT tp_proc_unit.name%TYPE := 'PNCCI';
/** Process unit name - processing node - PNCCO*/
c_pu_name_pncco                CONSTANT tp_proc_unit.name%TYPE := 'PNCCO';
/** Process unit name - processing node - PNMCI*/
c_pu_name_pnmci                CONSTANT tp_proc_unit.name%TYPE := 'PNMCI';
/** Process unit name - processing node - PNBPO*/
c_pu_name_pnbpo                CONSTANT tp_proc_unit.name%TYPE := 'PNBPO';
/** Process unit name - processing node - PNCLO*/
c_pu_name_pnclo                CONSTANT tp_proc_unit.name%TYPE := 'PNCLO';
/** Process unit name - processing node - PNBKG*/
c_pu_name_pnbkg                CONSTANT tp_proc_unit.name%TYPE := 'PNBKG';
/** Process unit name - processing node - PNATC*/
c_pu_name_pnatc                CONSTANT tp_proc_unit.name%TYPE := 'PNATC';
/** Process unit name - processing node - PNFLT*/
c_pu_name_pnflt                CONSTANT tp_proc_unit.name%TYPE := 'PNFLT';
/** Process unit name - processing node - PNCAM*/
c_pu_name_pncam                CONSTANT tp_proc_unit.name%TYPE := 'PNCAM';
/** Process unit name - processing node - PNPFD*/
c_pu_name_pnpfd                CONSTANT tp_proc_unit.name%TYPE := 'PNPFD';

--Process queues for process nodes
/**Process node queues - PNCCO wait*/
c_proc_queue_pncco_wait        CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pncco||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_wait;
/**Process node queues - PNCCO archive*/
c_proc_queue_pncco_archive     CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pncco||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_archive;
/**Process node queues - PNCCO verify*/
c_proc_queue_pncco_verify      CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pncco||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_verify;
/**Process node queues - PNCCO manual*/
c_proc_queue_pncco_manual      CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pncco||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_manual;
/**Process node queues - PNCCO hold*/
c_proc_queue_pncco_hold        CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pncco||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_hold;
/**Process node queues - PNCCO defer*/
c_proc_queue_pncco_defer       CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pncco||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_defer;


/**Process node queues - PNCLO wait*/
c_proc_queue_pnclo_wait        CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pnclo||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_wait;
/**Process node queues - PNCLO archive*/
c_proc_queue_pnclo_archive     CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pnclo||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_archive;
/**Process node queues - PNCLO manual*/
c_proc_queue_pnclo_manual      CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pnclo||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_manual;
/**Process node queues - PNCLO verify*/
c_proc_queue_pnclo_verify      CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pnclo||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_verify;
/**Process node queues - PNCLO defer*/
c_proc_queue_pnclo_defer       CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pnclo||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_defer;


/**Process node queues - PNEBI input*/
c_proc_queue_pnebi_input       CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pnebi||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_input;
/**Process node queues - PNEBI wait*/
c_proc_queue_pnebi_wait        CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pnebi||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_wait;
/**Process node queues - PNEBI archive*/
c_proc_queue_pnebi_archive     CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pnebi||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_archive;
/**Process node queues - PNEBI manual*/
c_proc_queue_pnebi_manual      CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pnebi||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_manual;
/**Process node queues - PNEBI manual R*/
c_proc_queue_pnebi_manual_r    CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pnebi||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_manual||'_R';
/**Process node queues - PNEBI verify*/
c_proc_queue_pnebi_verify      CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pnebi||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_verify;
/**Process node queues - PNEBI standby*/
c_proc_queue_pnebi_standby     CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pnebi||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_standby;
/**Process node queues - PNEBI hold*/
c_proc_queue_pnebi_hold        CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pnebi||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_hold;
/**Process node queues - PNEBI defer*/
c_proc_queue_pnebi_defer       CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pnebi||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_defer;


/**Process node queues - PNCCI input*/
c_proc_queue_pncci_input       CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pncci||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_input;
/**Process node queues - PNCCI archive*/
c_proc_queue_pncci_archive     CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pncci||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_archive;
/**Process node queues - PNCCI manual*/
c_proc_queue_pncci_manual      CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pncci||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_manual;
/**Process node queues - PNCCI verify*/
c_proc_queue_pncci_verify      CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pncci||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_verify;
/**Process node queues - PNCCI wait*/
c_proc_queue_pncci_wait        CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pncci||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_wait;
/**Process node queues - PNCCI hold*/
c_proc_queue_pncci_hold        CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pncci||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_hold;
/**Process node queues - PNCCI defer*/
c_proc_queue_pncci_defer       CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pncci||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_defer;


/**Process node queues - PNMCI manual*/
c_proc_queue_pnmci_manual      CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pnmci||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_manual;
/**Process node queues - PNMCI verify*/
c_proc_queue_pnmci_verify      CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pnmci||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_verify;
/**Process node queues - PNMCI archive*/
c_proc_queue_pnmci_archive     CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pnmci||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_archive;
/**Process node queues - PNMCI hold*/
c_proc_queue_pnmci_hold     CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pnmci||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_hold;


/**Process node queues - PNBPO archive*/
c_proc_queue_pnbpo_archive     CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pnbpo||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_archive;
/**Process node queues - PNBPO wait*/
c_proc_queue_pnbpo_wait        CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pnbpo||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_wait;
/**Process node queues - PNBPO verify*/
c_proc_queue_pnbpo_verify      CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pnbpo||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_verify;
/**Process node queues - PNBPO defer*/
c_proc_queue_pnbpo_defer       CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pnbpo||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_defer;


/**Process node queues - PNBKG archive*/
c_proc_queue_pnbkg_archive     CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pnbkg||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_archive;
/**Process node queues - PNBKG wait*/
c_proc_queue_pnbkg_wait        CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pnbkg||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_wait;
/**Process node queues - PNBKG standby*/
c_proc_queue_pnbkg_standby     CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pnbkg||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_standby;
/**Process node queues - PNBKG hold*/
c_proc_queue_pnbkg_hold        CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pnbkg||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_hold;
/**Process node queues - PNBKG defer*/
c_proc_queue_pnbkg_defer       CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pnbkg||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_defer;
/**Process node queues - PNBKG manual*/
c_proc_queue_pnbkg_manual      CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pnbkg||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_manual;
/**Process node queues - PNBKG verify*/
c_proc_queue_pnbkg_verify      CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pnbkg||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_verify;

/**Process node queues - PNBKG BK archive*/
c_proc_queue_pnbkg_bk_archive  CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pnbkg||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_bk_archive;
/**Process node queues - PNBKG BK wait*/
c_proc_queue_pnbkg_bk_wait     CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pnbkg||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_bk_wait;
/**Process node queues - PNBKG BK standby*/
c_proc_queue_pnbkg_bk_standby  CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pnbkg||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_bk_standby;


/**Process node queues - PNATC archive*/
c_proc_queue_pnatc_archive     CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pnatc||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_archive;
/**Process node queues - PNATC wait*/
c_proc_queue_pnatc_wait        CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pnatc||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_wait;
/**Process node queues - PNATC manual*/
c_proc_queue_pnatc_manual      CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pnatc||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_manual;
/**Process node queues - PNATC verify*/
c_proc_queue_pnatc_verify      CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pnatc||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_verify;
/**Process node queues - PNATC standby*/
c_proc_queue_pnatc_standby     CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pnatc||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_standby;
/**Process node queues - PNATC defer*/
c_proc_queue_pnatc_defer       CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pnatc||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_defer;


/**Process node queues - PNFLT archive*/
c_proc_queue_pnflt_archive     CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pnflt||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_archive;
/**Process node queues - PNFLT wait*/
c_proc_queue_pnflt_wait        CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pnflt||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_wait;
/**Process node queues - PNFLT manual*/
c_proc_queue_pnflt_manual      CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pnflt||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_manual;
/**Process node queues - PNFLT verify*/
c_proc_queue_pnflt_verify      CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pnflt||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_verify;
/**Process node queues - PNFLT defer*/
c_proc_queue_pnflt_defer       CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pnflt||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_defer;
/**Virtual queue Filtering requests postponed*/
c_proc_queue_pnflt_postponed   CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pnflt||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||'POSTPONED_WAIT';
/**Process node queues - PNFLT hold*/
c_proc_queue_pnflt_hold        CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pnflt||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_hold;


/**Process node queues - PNCAM wait*/
c_proc_queue_pncam_wait        CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pncam||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_wait;
/**Process node queues - PNCAM archive*/
c_proc_queue_pncam_archive     CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pncam||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_archive;
/**Process node queues - PNCAM verify*/
c_proc_queue_pncam_verify      CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pncam||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_verify;
/**Process node queues - PNCAM manual*/
c_proc_queue_pncam_manual      CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pncam||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_manual;
/**Process node queues - PNCAM hold*/
c_proc_queue_pncam_hold        CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pncam||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_hold;
/**Process node queues - PNCAM defer*/
c_proc_queue_pncam_defer       CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pncam||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_defer;


/**Process node queues - PNPFD archive*/
c_proc_queue_pnpfd_archive     CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pnpfd||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_archive;
/**Process node queues - PNPFD manual*/
c_proc_queue_pnpfd_manual      CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pnpfd||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_manual;
/**Process node queues - PNPFD verify*/
c_proc_queue_pnpfd_verify      CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pnpfd||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_verify;
/**Process node queues - PNPFD wait*/
c_proc_queue_pnpfd_wait        CONSTANT tp_proc_queue.name%TYPE := c_pu_name_pnpfd||TP_CONSTANTS_PKG.c_proc_node_queue_suffix_delim||TP_CONSTANTS_PKG.c_proc_queue_suffix_wait;


/**Amount type - transfer*/
c_amount_type_transfer         CONSTANT VARCHAR2(30) := 'AMOUNT';
/**Amount type - base amount*/
c_amount_type_base             CONSTANT VARCHAR2(30) := 'BASE';
/**Amount type - equivalent*/
c_amount_type_equiv            CONSTANT VARCHAR2(30) := 'EQUIV';
/**Amount type - instructed*/
c_amount_type_instr            CONSTANT VARCHAR2(30) := 'INSTR';

/**Amount type - transfer*/
c_currency_type_transfer       CONSTANT VARCHAR2(30) := 'CURR';
/**Amount type - base amount*/
c_currency_type_base           CONSTANT VARCHAR2(30) := 'BASE';
/**Amount type - equivalent*/
c_currency_type_equiv          CONSTANT VARCHAR2(30) := 'EQUIV';

/**System message template - duplicate transaction*/
c_symt_dupl_tx                 CONSTANT sys_msg_template.name%TYPE := 'DUPL_TX';
/**System message template - duplicate batch*/
c_symt_dupl_batch              CONSTANT sys_msg_template.name%TYPE := 'DUPL_BATCH';
/**System message template - duplicate batch because of some duplicate transaction in the batch*/
c_symt_dupl_batch_dupl_tx      CONSTANT sys_msg_template.name%TYPE := 'DUPL_BATCH_DUPL_TX';
/**System message template - payment stop on transaction*/
c_symt_payment_stop_tx         CONSTANT sys_msg_template.name%TYPE := 'PAYMENT_STOP_TX';
/**System message template - Wrong return equivalent currency (must be same as inward payment equivalent currency)*/
c_symt_wrong_ret_equiv_ccy     CONSTANT sys_msg_template.name%TYPE := 'WRONG_RET_EQUIV_CCY';
/**System message template - suspicious payment*/
c_symt_suspicious_pmt          CONSTANT sys_msg_template.name%TYPE := 'SUSPICIOUS_PMT';
/**System message template - info about precalculated/predicted bank-own fees during Manual Capture*/
c_symt_mci_precalc_bof         CONSTANT sys_msg_template.name%TYPE := 'MCI_PRECALC_BOF';
/**System message template - info about precalculated/predicted bank-own fees during Manual Capture - Waived in Capture by user*/
c_symt_mci_precalc_bof_cw      CONSTANT sys_msg_template.name%TYPE := 'MCI_PRECALC_BOF_CAPTWAIVED';
/**System message template - info about precalculated/predicted bank-own fees during Manual Capture - Waived Fee Rule*/
c_symt_mci_precalc_bof_rw      CONSTANT sys_msg_template.name%TYPE := 'MCI_PRECALC_BOF_RULEWAIVED';
/**System message template - info about Couterparty Mismatch*/
c_symt_cpty_bnk_msmtch         CONSTANT sys_msg_template.name%TYPE := 'CPTY_BANK_MISMATCH';
/**System message template - validation path error*/
c_symt_valid_path_error        CONSTANT sys_msg_template.name%TYPE := 'VALIDATION_PATH_ERROR';
/**System message template - info about creation of new file*/
c_symt_new_file                CONSTANT sys_msg_template.name%TYPE := 'NEW_FILE';
/**System message template - successful re-key validation*/
c_symt_rekey_success           CONSTANT sys_msg_template.name%TYPE := 'REKEY_SUCCESS';
/**System message template - NOT successful re-key validation*/
c_symt_rekey_not_success       CONSTANT sys_msg_template.name%TYPE := 'REKEY_NOT_SUCCESS';
/**System message template - MC warning*/
c_symt_mc_warning              CONSTANT sys_msg_template.name%TYPE := 'MC_WARNING';
/**System message template - info about creation of new bridger request file*/
c_symt_bridger_req_file        CONSTANT sys_msg_template.name%TYPE := 'BRIDGER_REQ_FILE';
/**System message template - info about creation of new bridger response file*/
c_symt_bridger_res_file        CONSTANT sys_msg_template.name%TYPE := 'BRIDGER_RES_FILE';
/**System message template - info about bridger response on transaction level*/
c_symt_bridger_log_tran        CONSTANT sys_msg_template.name%TYPE := 'BRIDGER_LOG_TRAN';
/**System message template - info about creation of new bridger response*/
c_symt_bridger_status_req      CONSTANT sys_msg_template.name%TYPE := 'BRIDGER_STATUS_REQ';
/**System message template - info about creation of new bridger response*/
c_symt_bridger_status_res      CONSTANT sys_msg_template.name%TYPE := 'BRIDGER_STATUS_RES';
/**System message template - info about creation of new bridger response file*/
c_symt_bridger_status_req_file CONSTANT sys_msg_template.name%TYPE := 'BRIDGER_STATUS_REQ_FILE';
/**System message template - info about creation of new bridger response file*/
c_symt_bridger_status_res_file CONSTANT sys_msg_template.name%TYPE := 'BRIDGER_STATUS_RES_FILE';
/** System message templates - Bypass Booking for Zero amount*/
c_symt_bypass_bkg_for_zero     CONSTANT sys_msg_template.name%TYPE := 'BYPASS_BOOKING_FOR_ZERO_AMT';
/** System message templates - $1 was skipped based on the system parameter "$2". ($1 = description of processing step, $2 = name of system parameter)*/
c_symt_ps_skipped_syspar       CONSTANT sys_msg_template.name%TYPE := 'PROCESSING_STEP_SKIPPED_SYSPAR';

/* file parameter - lebe id */
c_iofp_lebe_id                 CONSTANT tp_io_file_param.param_name%TYPE := 'LEBE_ID';
/* file parameter - ctab id */
c_iofp_ctab_id                 CONSTANT tp_io_file_param.param_name%TYPE := 'CTAB_ID';

/** Party pointer - ordering party*/
c_orcpparty_or                 CONSTANT VARCHAR2(2) := 'OR';
/** Party pointer - counterparty*/
c_orcpparty_cp                 CONSTANT VARCHAR2(2) := 'CP';

/** Debit-Credit Record - Debit*/
c_drcr_debit                   CONSTANT bk_step.dr_cr%TYPE := 'DR';
/** Debit-Credit Record - Credit*/
c_drcr_credit                  CONSTANT bk_step.dr_cr%TYPE := 'CR';

/** Type of manual activity suggestion - first suggestion*/
c_mai_sugg_type_suggestion     CONSTANT VARCHAR2(1) := 'S';
/** Type of manual activity correction - following correction*/
c_mai_sugg_type_correction     CONSTANT VARCHAR2(1) := 'C';

/** DOS new line (CR+LF) is used for concatenating and splitting multiline strings*/
c_crlf                         CONSTANT VARCHAR2(2) := CHR(13) || CHR(10);

/** Content type - XML file*/
c_xml_file                     CONSTANT tp_io_file.content_type%TYPE := 'application/xml';
/** Content type - PDF file*/
c_pdf_file                     CONSTANT tp_io_file.content_type%TYPE := 'application/pdf';

-- Default CLP name for Rejects - Unspecified Correspondent
c_clp_name_dflt                CONSTANT org_clearing_partner.name%TYPE := 'UNSPECCOR';

-- Workflow properties
/** action - put to next step of the path */
c_action_put_to_path_next      CONSTANT tp_path_config.action%TYPE := 'PUT_TO_PATH_NEXT';
/** action - put to defined step of the path */
c_action_put_to_path_curr      CONSTANT tp_path_config.action%TYPE := 'PUT_TO_PATH_CURR';
/** action - put to first step of the path */
c_action_put_to_path_first     CONSTANT tp_path_config.action%TYPE := 'PUT_TO_PATH_FIRST';

--TP message direction
c_tp_msg_direction_input       CONSTANT tp_message.direction%TYPE := 'I';
c_tp_msg_direction_output      CONSTANT tp_message.direction%TYPE := 'O';

--TP message status
c_tp_msg_status_prepared       CONSTANT tp_message.status%TYPE := 'P';
c_tp_msg_status_sent           CONSTANT tp_message.status%TYPE := 'S';
c_tp_msg_status_loaded         CONSTANT tp_message.status%TYPE := 'L';
c_tp_msg_status_error          CONSTANT tp_message.status%TYPE := 'E';


END TP_CONSTANTS_PKG;
/
;
