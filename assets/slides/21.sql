
-- Parents
create table parents as
  select "a" as parent, "b" as child union
  select "a"          , "c"          union
  select "d"          , "h"          union
  select "f"          , "a"          union
  select "f"          , "d"          union
  select "f"          , "g"          union
  select "e"          , "f";


-- Spotify
create table spotify as
  select "wildflower" as track, "billie eilish" as artist union
  select "birds of a feather" , "billie eilish"           union
  select "360"                , "charli xcx"              union
  select "pasilyo"            , "sunkissed lola"          union
  select "cinderella"         , "remi wolf"               union
  select "good luck babe!"    , "chappell roan"           union
  select "meow"               , "anamanaguchi";

select track from spotify where artist = “billie eilish”;

select track from spotify where track < artist;