-- migrate:up

CREATE TABLE positions (
  id	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  acronym	VARCHAR(5),
  name	VARCHAR(25)
);

-- migrate:down

DROP TABLE IF EXISTS positions;
