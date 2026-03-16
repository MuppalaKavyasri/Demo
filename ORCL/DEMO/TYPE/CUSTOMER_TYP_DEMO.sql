-- dmap_object_gen_tag : type : type name : customer_typ_demo
set search_path = demo,oracle,dmap_extension,public;
create type "customer_typ_demo"  as (customer_id        numeric(6), cust_first_name    varchar(20), cust_last_name     varchar(20), cust_address       cust_address_typ, phone_numbers      phone_list_typ, nls_language       varchar(3), nls_territory      varchar(30), credit_limit       decimal(9,2), cust_email         varchar(30), cust_orders        order_list_typ);
