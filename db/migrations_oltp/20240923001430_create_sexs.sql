-- migrate:up

CREATE TABLE sexs (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name	VARCHAR(7)
);

-- migrate:down

DROP TABLE IF EXISTS sexs;
