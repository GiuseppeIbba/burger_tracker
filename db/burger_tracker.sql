DROP TABLE if exists deals;
DROP TABLE if exists burgers;
DROP TABLE if exists eateries;


CREATE TABLE eateries (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  location VARCHAR(255)
);

CREATE TABLE burgers (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  price FLOAT(1),
  eatery_id SERIAL8 REFERENCES eateries(id) ON DELETE CASCADE
);

CREATE TABLE deals (
  id SERIAL8 PRIMARY KEY,
  label VARCHAR(255),
  type VARCHAR(255),
  day VARCHAR(10),
  burger_id SERIAL8 REFERENCES burgers(id) ON DELETE CASCADE,
  eatery_id SERIAL8 REFERENCES eateries(id) ON DELETE CASCADE
);
