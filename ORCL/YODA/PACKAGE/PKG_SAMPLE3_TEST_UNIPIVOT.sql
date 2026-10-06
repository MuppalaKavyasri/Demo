create or replace procedure yoda.pkg_sample3_test_unipivot (id numeric) as $body$
declare
begin 

insert into sale_stats_report
select * from sale_stats
, lateral (
values
('A', product_a),
('B', product_b),
('C', product_c)
) as unpivoted(product_code, quantity)

;end;
$body$
language plpgsql
;
