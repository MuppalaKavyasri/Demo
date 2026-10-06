-- dmap_object_gen_tag : type : unique name : index
set search_path = yoda,oracle,dmap_extension,public;
create unique index sport_team_u on sport_team (sport_type_name, sport_league_short_name, name);
