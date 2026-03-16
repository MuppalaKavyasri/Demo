-- dmap_object_gen_tag : type : type name : cust_address_typ2
set search_path = demo,oracle,dmap_extension,public;
create type "cust_address_typ2"  as (street_address     varchar(40), postal_code        varchar(10), city               varchar(30), state_province     varchar(10), country_id integer);
