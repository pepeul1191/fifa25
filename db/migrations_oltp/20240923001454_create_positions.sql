-- migrate:up

CREATE TABLE positions (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name	VARCHAR(10)
);

-- migrate:down

DROP TABLE IF EXISTS positions;
