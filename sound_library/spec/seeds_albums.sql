
TRUNCATE TABLE albums RESTART IDENTITY;
TRUNCATE TABLE artists RESTART IDENTITY;

INSERT INTO artists (name, genre) VALUES ('Wind sounds', 'nature sounds');


INSERT INTO albums (title, release_year, artist_id) VALUES ('Album1', '2023', '1');
INSERT INTO albums (title, release_year, artist_id) VALUES ('Album2', '2023', '2');