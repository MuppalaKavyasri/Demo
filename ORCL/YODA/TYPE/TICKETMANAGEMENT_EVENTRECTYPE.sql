-- DMAP_OBJECT_GEN_TAG : TYPE : EDITIONABLE NAME : ticketmanagement_eventrectype
SET search_path = yoda,oracle,dmap_extension,public;

CREATE TYPE ticketmanagement_eventrectype AS (
sport_name varchar,
                                home_team_name varchar,
                                away_team_name varchar,
                                home_field     varchar,
                                date_time      TIMESTAMP WITHOUT TIME ZONE

);
