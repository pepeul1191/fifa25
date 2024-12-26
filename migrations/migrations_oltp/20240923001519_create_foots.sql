-- migrate:up

CREATE TABLE foots (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name	VARCHAR(6)
);

-- migrate:down

DROP TABLE IF EXISTS foots;
