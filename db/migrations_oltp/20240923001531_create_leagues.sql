-- migrate:up

CREATE TABLE leagues (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name	VARCHAR(30),
  nation_id	INTEGER,
  FOREIGN KEY (nation_id) REFERENCES nations (id)
);

-- migrate:down

DROP TABLE IF EXISTS leagues;
