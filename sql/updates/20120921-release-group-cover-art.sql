\set ON_ERROR_STOP 1

BEGIN;

CREATE TABLE cover_art_archive.release_group_cover_art
(
    release_group       INTEGER NOT NULL,
    release             INTEGER NOT NULL
);

ALTER TABLE cover_art_archive.release_group_cover_art
   ADD PRIMARY KEY (release_group);

ALTER TABLE cover_art_archive.release_group_cover_art
   ADD FOREIGN KEY (release_group) REFERENCES musicbrainz.release_group(id);

ALTER TABLE cover_art_archive.release_group_cover_art
   ADD FOREIGN KEY (release) REFERENCES musicbrainz.release(id);

COMMIT;
