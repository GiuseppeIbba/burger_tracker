DROP TABLE if exists deals;
DROP TABLE if exists burgers;
DROP TABLE if exists eateries;


CREATE TABLE eateries (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  LOCATION VARCHAR(255)
);

CREATE TABLE burgers (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  price INT8,
  eatery_id SERIAL8 REFERENCES eateries(id)
);

CREATE TABLE deals (
  id SERIAL8 PRIMARY KEY,
  label VARCHAR(255),
  day VARCHAR(10),
  burger_id SERIAL8 REFERENCES burgers(id)
);
