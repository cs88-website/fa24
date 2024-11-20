------------------------
-- Music with friends --
------------------------

CREATE TABLE shm_tracks AS
SELECT "360" AS track, "charli" AS artist UNION
SELECT "cinderella"  , "remi"             UNION
SELECT "wildflower"  , "billie";

CREATE TABLE anya_tracks AS
SELECT "apple" AS track, "charli" AS artist UNION
SELECT "taste"         , "sabrina"          UNION
SELECT "wildflower"    , "billie";

-- songs in common
SELECT 
shm_tracks.track AS s_track, 
shm_tracks.artist AS s_artist, 
anya_tracks.track AS a_track, 
anya_tracks.artist AS a_artist
FROM shm_tracks, anya_tracks 
WHERE s_track = a_track;

-- artists or songs in common
SELECT
shm_tracks.artist AS s_artist,
shm_tracks.track AS s_track,
anya_tracks.track AS a_track,
anya_tracks.artist AS a_artist
FROM shm_tracks, anya_tracks
WHERE s_track = a_track OR s_artist = a_artist
;



-- song pairs
SELECT a.track AS track1, b.track AS track2, a.artist AS artist 
FROM shm_tracks AS a, shm_tracks AS b 
WHERE a.artist=b.artist AND a.track < b.track;
-- OR:
SELECT a.track AS track1, b.track AS track2, a.artist AS artist 
FROM shm_tracks AS a, shm_tracks AS b 
WHERE a.artist=b.artist AND a.track != b.track 
GROUP BY a.artist;


----------
-- Dogs --
----------

-- Parents
CREATE TABLE parents AS
  SELECT "ace" AS parent, "bella" AS child UNION
  SELECT "ace"          , "charlie"         UNION
  SELECT "daisy"        , "hank"         UNION
  SELECT "ellie"        , "finn"         UNION
  SELECT "finn"         , "ace"          UNION
  SELECT "finn"         , "daisy"          UNION
  SELECT "finn"         , "ginger";

-- Fur
CREATE TABLE dogs AS
  SELECT "ace" AS name, "long" AS fur UNION
  SELECT "bella"      , "short"       UNION
  SELECT "charlie"    , "long"        UNION
  SELECT "daisy"      , "long"        UNION
  SELECT "ellie"      , "short"       UNION
  SELECT "finn"       , "curly"       UNION
  SELECT "ginger"     , "short"       UNION
  SELECT "hank"       , "curly";



-- Parents of curly dogs
SELECT parent FROM parents, dogs WHERE child = name AND fur = "curly";

-- Siblings
SELECT a.child AS first, b.child AS second
  FROM parents AS a, parents AS b
  WHERE a.parent = b.parent AND a.child < b.child;

-- Grandparents
CREATE TABLE grandparents AS
  SELECT a.parent AS grandog, b.child AS granpup
    FROM parents AS a, parents AS b
    WHERE b.parent = a.child;

-- Grandogs with the same fur AS their granpups
SELECT grandog, granpup, c.fur FROM grandparents, dogs AS c, dogs AS d
  WHERE grandog = c.name AND
        granpup = d.name AND
        c.fur = d.fur;

-- Dog triples
SELECT a.name, b.name, c.name FROM dogs AS a, dogs AS b, dogs AS c
  WHERE a.name > b.name AND b.name > c.name AND a.fur = b.fur AND b.fur = c.fur;

------------
-- Cities --
------------

CREATE TABLE cities AS
  SELECT 38 AS latitude, 122 AS longitude, "Berkeley" AS name UNION
  SELECT 42,              71,              "Cambridge"        UNION
  SELECT 45,              93,              "Minneapolis"      UNION
  SELECT 33,             117,              "San Diego"        UNION
  SELECT 26,              80,              "Miami"            UNION
  SELECT 90,               0,              "North Pole";

CREATE TABLE cold AS
  SELECT name FROM cities WHERE latitude > 43 UNION
  SELECT "Chicago";

SELECT name, "is cold!" FROM cold;

CREATE TABLE distances AS
  SELECT a.name AS first, b.name AS second,
         60*(a.latitude-b.latitude) AS distance
         FROM cities AS a, cities AS b
         WHERE a.name != b.name
         ORDER BY a.longitude;

SELECT second FROM distances WHERE first="Minneapolis" ORDER BY -distance;

---------------
-- Sentences --
---------------

CREATE TABLE nouns AS
  SELECT "the dog" AS phrase UNION
  SELECT "the cat"           UNION
  SELECT "the bird";

SELECT subject.phrase || " chased " || object.phrase
       FROM nouns AS subject, nouns AS object
       WHERE subject.phrase != object.phrase;

CREATE TABLE ands AS
  SELECT phrase FROM nouns UNION
  SELECT first.phrase || " AND " || second.phrase
         FROM nouns AS first, nouns AS second
         WHERE first.phrase != second.phrase;

SELECT subject.phrase || " chased " || object.phrase
       FROM ands AS subject, ands AS object
       WHERE subject.phrase != object.phrase;

