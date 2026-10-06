-- dmap_object_gen_tag : type : type name : table_stats_typ
set search_path = yoda,oracle,dmap_extension,public;
create type         "table_stats_typ" as object(insertedcount int,updatedcount  int,deletedcount  int,unchangedcount int,starttm date,completiontm date,member procedure reset,member procedure plus_equal( value2 in table_stats_typ ),member function to_string return  varchar2,static function create_new return  table_stats_typ);
type body        "table_stats_typ"
as
static function create_new return  table_stats_typ is
begin
return table_stats_typ(
0,
0,
0,
0,
sysdate,
null
);
end create_new;
member procedure reset is
begin
insertedcount := 0;
updatedcount := 0;
deletedcount := 0;
unchangedcount := 0;
starttm := null;
completiontm := null;
end reset;
member procedure plus_equal( value2 in table_stats_typ ) is
begin
insertedcount  := insertedcount  + value2.insertedcount;
updatedcount   := updatedcount   + value2.updatedcount;
deletedcount   := deletedcount   + value2.deletedcount;
unchangedcount := unchangedcount + value2.unchangedcount;
end plus_equal;
member function to_string
return  varchar2 is
begin
return
'Successfully '
||  '  inserted => ' || insertedcount
||  ', updated => ' || updatedcount
||  ', deleted => ' || deletedcount
||  ', unchanged => ' || unchangedcount;
end to_string;
end;
