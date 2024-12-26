-- migrate:up

CREATE TABLE teams (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name	VARCHAR(40),
  league_id	INTEGER NOT NULL,
  FOREIGN KEY (league_id) REFERENCES leagues (id)
);

-- migrate:down

DROP TABLE IF EXISTS teams;
