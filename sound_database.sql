-- -------------------------------------------------------------
-- TablePlus 4.5.0(396)
--
-- https://tableplus.com/
--
-- Database: design
-- Generation Time: 2022-04-27 17:13:27.2140
-- -------------------------------------------------------------


DROP TABLE IF EXISTS "public"."albums";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS albums_id_seq;

-- Table Definition
CREATE TABLE "public"."albums" (
    "id" SERIAL,
    "title" text,
    "release_year" int4,
    "artist_id" int4,
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "public"."artists";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS artists_id_seq;

-- Table Definition
CREATE TABLE "public"."artists" (
    "id" SERIAL,
    "name" text,
    "genre" text,
    PRIMARY KEY ("id")
);

INSERT INTO "public"."albums" ("title", "release_year", "artist_id") VALUES
('Dottle', 1989, 1),
('Susa', 1988, 1),
('Watoo', 1974, 2),
('Suer', 1980, 2),
('Bosva', 1990, 1),
('Loer', 2019, 3),
('Folre', 2020, 3),
('I You', 1965, 4),
('Bore', 1978, 4),
( ' Sun', 1971, 4),
( 'Fodngs', 1982, 4),
( 'Riing', 1973, 2);

INSERT INTO "public"."artists" ("name", "genre") VALUES
('Ps', 'Rck'),
('AA', 'Pp'),
('Taft', 'Pp'),
('Ninmone', 'Pp');
