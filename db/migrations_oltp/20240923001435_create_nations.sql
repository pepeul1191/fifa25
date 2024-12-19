-- migrate:up

CREATE TABLE nations (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name	VARCHAR(40)
);

-- migrate:down

DROP TABLE IF EXISTS nations;
