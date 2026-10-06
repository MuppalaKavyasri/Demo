-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table bar (
foo numeric options (key 'true') not null,
bar numeric options (key 'true') not null
) server  options(schema 'YODA', table 'BAR', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table bfile_icons (
icon_id varchar(100) options (key 'true') not null,
icon_rel_path varchar(1000),
icon_grapic bytea
) server  options(schema 'YODA', table 'BFILE_ICONS', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table bulk_test_table (
id numeric(38),
name varchar(10),
join_date timestamp(0)
) server  options(schema 'YODA', table 'BULK_TEST_TABLE', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table clobdata (
id numeric,
rawdata text
) server  options(schema 'YODA', table 'CLOBDATA', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table clobdatatarget (
id numeric,
data varchar(100)
) server  options(schema 'YODA', table 'CLOBDATATARGET', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table course (
course_no numeric(8) options (key 'true') not null,
description varchar(50) not null,
cost decimal(9,2),
prerequisite numeric(8),
created_by varchar(30) not null,
created_date timestamp(0) not null,
modified_by varchar(30) not null,
modified_date timestamp(0) not null
) server  options(schema 'YODA', table 'COURSE', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table data_type_test (
col1 char(1),
col2 char(10),
col3 varchar(10),
col4 varchar(10),
col5 text,
col6 numeric(38),
col7 numeric,
col8 numeric(8),
col9 decimal(10,2),
col10 decimal(11,2),
col11 decimal(38,5),
col12 double precision,
col13 timestamp(0),
col14 timestamp,
col15 decimal(10,2),
col16 bytea,
col17 bytea,
col18 text
) server  options(schema 'YODA', table 'DATA_TYPE_TEST', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table dest_tab (
object_id numeric options (key 'true') not null,
owner varchar(128) not null,
object_name varchar(128) not null,
object_type varchar(23)
) server  options(schema 'YODA', table 'DEST_TAB', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table employee (
emp_id numeric,
emp_name varchar(20),
email_id varchar(20),
date_of_birth timestamp(0),
joining_date timestamp(0),
salary decimal(10,2),
comm decimal(10,2),
department varchar(10),
mobile_no numeric,
address varchar(20)
) server  options(schema 'YODA', table 'EMPLOYEE', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table employees (
id numeric(38) options (key 'true') not null,
first_name varchar(40) not null,
last_name varchar(40) not null
) server  options(schema 'YODA', table 'EMPLOYEES', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table employee_audits (
id numeric(38) options (key 'true') not null,
employee_id numeric(38) not null,
last_name varchar(40) not null,
changed_on timestamp not null
) server  options(schema 'YODA', table 'EMPLOYEE_AUDITS', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table employee_bkp (
emp_id numeric,
emp_name varchar(20),
email_id varchar(20),
date_of_birth timestamp(0),
joining_date timestamp(0),
salary decimal(10,2),
comm decimal(10,2),
department varchar(10),
mobile_no numeric,
address varchar(20)
) server  options(schema 'YODA', table 'EMPLOYEE_BKP', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table employee_details (
employee_id numeric,
employee_name varchar(10),
employee_branch_code varchar(5),
employee_mobile_number numeric,
employee_salary numeric,
employee_comm numeric,
employee_join_date timestamp(0)
) server  options(schema 'YODA', table 'EMPLOYEE_DETAILS', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table employee_details_new (
employee_id numeric,
employee_name varchar(10),
employee_mobile_number numeric,
employee_branch varchar(10),
employee_join_date timestamp(0),
employee_salary numeric,
employee_comm numeric
) server  options(schema 'YODA', table 'EMPLOYEE_DETAILS_NEW', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table employee_details_outer_join (
employee_id numeric,
employee_name varchar(10),
employee_branch_code varchar(5),
employee_mobile_number numeric,
employee_salary numeric,
employee_comm numeric
) server  options(schema 'YODA', table 'EMPLOYEE_DETAILS_OUTER_JOIN', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table employee_outer_join (
emp_id numeric,
emp_name varchar(20),
email_id varchar(20),
date_of_birth timestamp(0),
joining_date timestamp(0),
salary decimal(10,2),
comm decimal(10,2),
department varchar(10),
mobile_no numeric,
address varchar(20)
) server  options(schema 'YODA', table 'EMPLOYEE_OUTER_JOIN', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table emp_mv (
course_no numeric(8),
description varchar(50),
cost decimal(9,2),
prerequisite numeric(8),
created_by varchar(30),
created_date timestamp(0),
modified_by varchar(30),
modified_date timestamp(0)
) server  options(schema 'YODA', table 'EMP_MV', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table enrollment (
student_id numeric(8) options (key 'true') not null,
section_id numeric(8) options (key 'true') not null,
enroll_date timestamp(0) not null,
final_grade numeric(3),
created_by varchar(30) not null,
created_date timestamp(0) not null,
modified_by varchar(30) not null,
modified_date timestamp(0) not null
) server  options(schema 'YODA', table 'ENROLLMENT', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table foo (
foo numeric options (key 'true') not null
) server  options(schema 'YODA', table 'FOO', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table foo_bar (
foo numeric,
bar numeric,
foo_rowid oid,
bar_rowid oid
) server  options(schema 'YODA', table 'FOO_BAR', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table full_text_search_tbl (
id numeric(16) not null,
st_id numeric(10) not null,
cl_trn_data text,
amount decimal(12,2) not null,
refund_amount decimal(12,2),
currency char(3) not null,
ip_address varchar(50),
lk_dt timestamp,
locked_by varchar(50),
form_of_payment varchar(20) not null,
search_data varchar(500),
creation_date timestamp not null,
modification_date timestamp not null,
discriminator varchar(10) not null,
china_pay_form_of_payment varchar(20) not null,
payment_for_service varchar(40) not null,
verification_date timestamp
) server  options(schema 'YODA', table 'FULL_TEXT_SEARCH_TBL', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table grade (
student_id numeric(8) options (key 'true') not null,
section_id numeric(8) options (key 'true') not null,
grade_type_code char(2) options (key 'true') not null,
grade_code_occurrence numeric(38) options (key 'true') not null,
numeric_grade numeric(3) not null,
comments varchar(2000),
created_by varchar(30) not null,
created_date timestamp(0) not null,
modified_by varchar(30) not null,
modified_date timestamp(0) not null
) server  options(schema 'YODA', table 'GRADE', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table grade_conversion (
letter_grade varchar(2) options (key 'true') not null,
grade_point decimal(3,2) not null,
max_grade numeric(3) not null,
min_grade numeric(3) not null,
created_by varchar(30) not null,
created_date timestamp(0) not null,
modified_by varchar(30) not null,
modified_date timestamp(0) not null
) server  options(schema 'YODA', table 'GRADE_CONVERSION', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table grade_type (
grade_type_code char(2) options (key 'true') not null,
description varchar(50) not null,
created_by varchar(30) not null,
created_date timestamp(0) not null,
modified_by varchar(30) not null,
modified_date timestamp(0) not null
) server  options(schema 'YODA', table 'GRADE_TYPE', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table grade_type_weight (
section_id numeric(8) options (key 'true') not null,
grade_type_code char(2) options (key 'true') not null,
number_per_section numeric(3) not null,
percent_of_final_grade numeric(3) not null,
drop_lowest char(1) not null,
created_by varchar(30) not null,
created_date timestamp(0) not null,
modified_by varchar(30) not null,
modified_date timestamp(0) not null
) server  options(schema 'YODA', table 'GRADE_TYPE_WEIGHT', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table hier_test (
emp_no numeric,
ename varchar(5),
job varchar(9),
manager_no numeric
) server  options(schema 'YODA', table 'HIER_TEST', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table instructor (
instructor_id numeric(8) options (key 'true') not null,
salutation varchar(5),
first_name varchar(25),
last_name varchar(25),
street_address varchar(50),
zip varchar(5),
phone varchar(15),
created_by varchar(30) not null,
created_date timestamp(0) not null,
modified_by varchar(30) not null,
modified_date timestamp(0) not null
) server  options(schema 'YODA', table 'INSTRUCTOR', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table interval_sales (
prod_id numeric(6),
cust_id numeric,
time_id timestamp(0),
channel_id char(1),
promo_id numeric(6),
quantity_sold numeric(3),
amount_sold decimal(10,2)
) partition by range (time_id) server  options(schema 'YODA', table 'INTERVAL_SALES', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table interval_tab (
id numeric,
code varchar(10),
description varchar(50),
created_date timestamp(0)
) partition by range (created_date) server  options(schema 'YODA', table 'INTERVAL_TAB', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table invoices_hash (
invoice_no numeric not null,
invoice_date timestamp(0) not null,
comments varchar(500)
) partition by hash (invoice_no) server  options(schema 'YODA', table 'INVOICES_HASH', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table invoices_range (
invoice_no numeric not null,
invoice_date timestamp(0) not null,
comments varchar(500)
) partition by range (invoice_date) server  options(schema 'YODA', table 'INVOICES_RANGE', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table lob_tab (
number_content numeric(10) options (key 'true') not null,
varchar2_content varchar(10),
clob_content text
) server  options(schema 'YODA', table 'LOB_TAB', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table mlb_data (
mlb_id numeric,
mlb_name varchar(30),
mlb_pos varchar(30),
mlb_team varchar(30),
mlb_team_long varchar(30),
bats varchar(30),
throws varchar(30),
birth_year varchar(30),
bp_id numeric,
bref_id varchar(30),
bref_name varchar(30),
cbs_id varchar(30),
cbs_name varchar(30),
cbs_pos varchar(30),
espn_id numeric,
espn_name varchar(30),
espn_pos varchar(30),
fg_id varchar(30),
fg_name varchar(30),
lahman_id varchar(30),
nfbc_id numeric,
nfbc_name varchar(30),
nfbc_pos varchar(30),
retro_id varchar(30),
retro_name varchar(30),
debut varchar(30),
yahoo_id numeric,
yahoo_name varchar(30),
yahoo_pos varchar(30),
mlb_depth varchar(30)
) server  options(schema 'YODA', table 'MLB_DATA', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table name_data (
name_type varchar(15) options (key 'true') not null,
name varchar(45) options (key 'true') not null
) server  options(schema 'YODA', table 'NAME_DATA', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table nfl_data (
position varchar(5),
player_number numeric(3),
name varchar(40),
status varchar(10),
stat1 varchar(10),
stat1_val varchar(10),
stat2 varchar(10),
stat2_val varchar(10),
stat3 varchar(10),
stat3_val varchar(10),
stat4 varchar(10),
stat4_val varchar(10),
team varchar(10)
) server  options(schema 'YODA', table 'NFL_DATA', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table nfl_stadium_data (
stadium varchar(60),
seating_capacity numeric,
location varchar(40),
surface varchar(80),
roof varchar(30),
team varchar(40),
opened varchar(10),
sport_location_id numeric
) server  options(schema 'YODA', table 'NFL_STADIUM_DATA', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table orders (
order_id numeric(12) options (key 'true') not null,
order_date timestamp(0),
order_mode varchar(8),
customer_id numeric(6),
order_status numeric(2),
order_total decimal(8,2),
sales_rep_id numeric(6),
promotion_id numeric(6)
) partition by range (order_date) server  options(schema 'YODA', table 'ORDERS', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table orders_list_default (
id numeric options (key 'true') not null,
country_code varchar(5),
customer_id numeric,
order_date timestamp(0),
order_total decimal(8,2)
) partition by list ((country_code::text)) server  options(schema 'YODA', table 'ORDERS_LIST_DEFAULT', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table orders_m (
id numeric options (key 'true') not null,
country_code varchar(5),
customer_id numeric,
order_date timestamp(0),
order_total decimal(8,2)
) partition by list ((country_code::text)) server  options(schema 'YODA', table 'ORDERS_M', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table order_items (
order_id numeric(12) not null,
line_item_id numeric(3) not null,
product_id numeric(6) not null,
unit_price decimal(8,2),
quantity numeric(8)
) -- unsupported partition type, please check
server  options(schema 'YODA', table 'ORDER_ITEMS', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table person (
id numeric options (key 'true') not null,
full_name varchar(60) not null,
last_name varchar(30),
first_name varchar(30)
) server  options(schema 'YODA', table 'PERSON', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table player (
id numeric options (key 'true') not null,
sport_team_id numeric not null,
last_name varchar(30),
first_name varchar(30),
full_name varchar(30)
) server  options(schema 'YODA', table 'PLAYER', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table range_partition_table (
invoice_no numeric not null,
invoice_date timestamp(0) not null,
comments varchar(500)
) partition by range (invoice_date) server  options(schema 'YODA', table 'RANGE_PARTITION_TABLE', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table sale_stats (
id numeric(38) options (key 'true') not null,
fiscal_year numeric(38),
product_a numeric(38),
product_b numeric(38),
product_c numeric(38)
) server  options(schema 'YODA', table 'SALE_STATS', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table sale_stats_report (
id numeric(38) options (key 'true') not null,
fiscal_year numeric(38),
product_code char(1),
quantity numeric(38)
) server  options(schema 'YODA', table 'SALE_STATS_REPORT', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table sample_user_action (
sample_user_action_id numeric(38) options (key 'true') not null,
sample_user_action_state_id numeric(38) not null,
sample_user_action_type_id numeric(38) not null,
ca_asset_id numeric(38) not null,
processing_seq_num numeric(38) not null,
sample_user_action_class_id numeric(38) not null,
last_chg_user_nm varchar(30) not null,
last_chg_dt_tm timestamp(0) not null,
created_by_user_nm varchar(30) not null,
created_dt_tm timestamp(0) not null,
data_source_id numeric(38) not null,
ex_dt numeric(38) not null,
record_dt numeric(38),
pay_dt numeric(38),
data_source_ca_ext_id varchar(32),
description varchar(2000),
receipt_asset_id numeric(38),
gross_receipt_factor_amt numeric,
net_receipt_factor_amt numeric,
receipt_symbol varchar(20)
) server  options(schema 'YODA', table 'SAMPLE_USER_ACTION', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table seat (
sport_location_id numeric options (key 'true') not null,
seat_level numeric(1) options (key 'true') not null,
seat_section varchar(15) options (key 'true') not null,
seat_row varchar(10) options (key 'true') not null,
seat varchar(10) options (key 'true') not null,
seat_type varchar(15)
) server  options(schema 'YODA', table 'SEAT', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table seat_type (
name varchar(15) options (key 'true') not null,
description varchar(120),
relative_quality numeric(2)
) server  options(schema 'YODA', table 'SEAT_TYPE', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table section (
section_id numeric(8) options (key 'true') not null,
course_no numeric(8) not null,
section_no numeric(3) not null,
start_date_time timestamp(0),
location varchar(50),
instructor_id numeric(8) not null,
capacity numeric(3),
created_by varchar(30) not null,
created_date timestamp(0) not null,
modified_by varchar(30) not null,
modified_date timestamp(0) not null
) server  options(schema 'YODA', table 'SECTION', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table source_tab (
object_id numeric options (key 'true') not null,
owner varchar(128) not null,
object_name varchar(128) not null,
object_type varchar(23)
) server  options(schema 'YODA', table 'SOURCE_TAB', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table sporting_event (
id numeric options (key 'true') not null,
sport_type_name varchar(15) not null,
home_team_id numeric not null,
away_team_id numeric not null,
location_id numeric not null,
start_date_time timestamp(0) not null,
sold_out numeric(1) not null
) server  options(schema 'YODA', table 'SPORTING_EVENT', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table sporting_event_ticket (
id numeric options (key 'true') not null,
sporting_event_id numeric not null,
sport_location_id numeric not null,
seat_level numeric(1) not null,
seat_section varchar(15) not null,
seat_row varchar(10) not null,
seat varchar(10) not null,
ticketholder_id numeric,
ticket_price decimal(8,2) not null
) server  options(schema 'YODA', table 'SPORTING_EVENT_TICKET', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table sport_division (
sport_type_name varchar(15) options (key 'true') not null,
sport_league_short_name varchar(10) options (key 'true') not null,
short_name varchar(10) options (key 'true') not null,
long_name varchar(60),
description varchar(120)
) server  options(schema 'YODA', table 'SPORT_DIVISION', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table sport_league (
sport_type_name varchar(15) not null,
short_name varchar(10) options (key 'true') not null,
long_name varchar(60) not null,
description varchar(120)
) server  options(schema 'YODA', table 'SPORT_LEAGUE', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table sport_location (
id numeric(3) options (key 'true') not null,
name varchar(60) not null,
city varchar(60) not null,
seating_capacity numeric(7),
levels numeric(1),
sections numeric(4)
) server  options(schema 'YODA', table 'SPORT_LOCATION', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table sport_team (
id numeric options (key 'true') not null,
name varchar(30) not null,
abbreviated_name varchar(10),
home_field_id numeric(3),
sport_type_name varchar(15) not null,
sport_league_short_name varchar(10) not null,
sport_division_short_name varchar(10)
) server  options(schema 'YODA', table 'SPORT_TEAM', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table sport_type (
name varchar(15) options (key 'true') not null,
description varchar(120)
) server  options(schema 'YODA', table 'SPORT_TYPE', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table stadium_notes (
id numeric options (key 'true') not null,
owner varchar(128),
name varchar(128),
type varchar(12),
line numeric,
text varchar(4000),
origin_con_id numeric
) partition by range (id) server  options(schema 'YODA', table 'STADIUM_NOTES', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table student (
student_id numeric(8) options (key 'true') not null,
salutation varchar(5),
first_name varchar(25),
last_name varchar(25) not null,
street_address varchar(50),
zip varchar(5) not null,
phone varchar(15),
employer varchar(50),
registration_date timestamp(0) not null,
created_by varchar(30) not null,
created_date timestamp(0) not null,
modified_by varchar(30) not null,
modified_date timestamp(0) not null
) server  options(schema 'YODA', table 'STUDENT', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table tab1 (
id numeric options (key 'true') not null,
parent_id numeric
) server  options(schema 'YODA', table 'TAB1', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table tables_info (
table_name varchar(128) not null,
tablespace_name varchar(30),
cluster_name varchar(128),
iot_name varchar(128),
status varchar(8),
pct_free numeric,
pct_used numeric,
ini_trans numeric,
max_trans numeric,
initial_extent numeric,
next_extent numeric,
min_extents numeric,
max_extents numeric,
pct_increase numeric,
freelists numeric,
freelist_groups numeric,
logging varchar(3),
backed_up varchar(1),
num_rows numeric,
blocks numeric,
empty_blocks numeric,
avg_space numeric,
chain_cnt numeric,
avg_row_len numeric,
avg_space_freelist_blocks numeric,
num_freelist_blocks numeric,
degree varchar(40),
instances varchar(40),
cache varchar(20),
table_lock varchar(8),
sample_size numeric,
last_analyzed timestamp(0),
partitioned varchar(3),
iot_type varchar(12),
temporary varchar(1),
secondary varchar(1),
nested varchar(3),
buffer_pool varchar(7),
flash_cache varchar(7),
cell_flash_cache varchar(7),
row_movement varchar(8),
global_stats varchar(3),
user_stats varchar(3),
duration varchar(15),
skip_corrupt varchar(8),
monitoring varchar(3),
cluster_owner varchar(128),
dependencies varchar(8),
compression varchar(8),
compress_for varchar(30),
dropped varchar(3),
read_only varchar(3),
segment_created varchar(3),
result_cache varchar(7),
clustering varchar(3),
activity_tracking varchar(23),
dml_timestamp varchar(25),
has_identity varchar(3),
container_data varchar(3),
inmemory varchar(8),
inmemory_priority varchar(8),
inmemory_distribute varchar(15),
inmemory_compression varchar(17),
inmemory_duplicate varchar(13)
) server  options(schema 'YODA', table 'TABLES_INFO', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table test (
id numeric,
name varchar(10)
) server  options(schema 'YODA', table 'TEST', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table test_c1 (
id numeric(38),
name varchar(10),
tx_dt timestamp(0)
) server  options(schema 'YODA', table 'TEST_C1', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table test_cur_found (
id numeric,
name varchar(45),
login_date timestamp(0)
) server  options(schema 'YODA', table 'TEST_CUR_FOUND', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table test_index_1 (
col_1 numeric options (key 'true') not null,
col_2 timestamp(0),
col_3 varchar(1)
) server  options(schema 'YODA', table 'TEST_INDEX_1', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table test_index_2 (
col_1 numeric,
col_2 timestamp(0),
col_3 varchar(1),
col_4 timestamp(0)
) server  options(schema 'YODA', table 'TEST_INDEX_2', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table test_savepoint (
id numeric(38),
name varchar(10)
) server  options(schema 'YODA', table 'TEST_SAVEPOINT', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table test_table (
id numeric,
name varchar(45),
login_date timestamp(0)
) server  options(schema 'YODA', table 'TEST_TABLE', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table test_table2 (
id numeric,
name varchar(45),
login_date timestamp(0)
) server  options(schema 'YODA', table 'TEST_TABLE2', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table test_table3 (
id numeric,
name varchar(45),
login_date timestamp(0)
) server  options(schema 'YODA', table 'TEST_TABLE3', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table tickets_hash_partition (
ticket_no numeric(18) options (key 'true') not null,
ticket_date timestamp(0) not null,
reason varchar(20)
) partition by hash (ticket_no) server  options(schema 'YODA', table 'TICKETS_HASH_PARTITION', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table ticket_purchase_hist (
sporting_event_ticket_id numeric options (key 'true') not null,
purchased_by_id numeric options (key 'true') not null,
transaction_date_time timestamp(0) options (key 'true') not null,
transferred_from_id numeric,
purchase_price decimal(8,2) not null
) server  options(schema 'YODA', table 'TICKET_PURCHASE_HIST', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table typecast (
id numeric,
name varchar(60)
) server  options(schema 'YODA', table 'TYPECAST', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table user_data (
id numeric(10) not null,
first_name varchar(40) not null,
last_name varchar(40) not null,
gender varchar(1),
dob timestamp(0)
) server  options(schema 'YODA', table 'USER_DATA', readonly 'true');
-- dmap_object_gen_tag : type : fdw name : table
set search_path = yoda,oracle,dmap_extension,public;
create foreign  table zipcode (
zip varchar(5) options (key 'true') not null,
city varchar(25),
state varchar(2),
created_by varchar(30) not null,
created_date timestamp(0) not null,
modified_by varchar(30) not null,
modified_date timestamp(0) not null
) server  options(schema 'YODA', table 'ZIPCODE', readonly 'true');
