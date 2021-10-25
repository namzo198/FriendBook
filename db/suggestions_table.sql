DROP TYPE IF EXISTS TONE CASCADE;
CREATE TYPE TONE AS ENUM ('passive', 'neutral', 'assertive');

DROP TYPE IF EXISTS USER_ACTION CASCADE;
CREATE TYPE USER_ACTION AS ENUM ('accept', 'reject');

CREATE TABLE IF NOT EXISTS suggestions (
  user_id INTEGER PRIMARY KEY,
  tone TONE NOT NULL,
  deletion USER_ACTION,
  edit USER_ACTION,
  audience USER_ACTION
);