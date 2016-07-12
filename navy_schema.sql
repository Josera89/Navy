DROP TABLE IF EXISTS fleet CASCADE;
DROP TABLE IF EXISTS ships CASCADE;
DROP TABLE IF EXISTS sailors CASCADE;
DROP TABLE IF EXISTS duties CASCADE;


CREATE TABLE fleet (
   id INTEGER PRIMARY KEY
);

INSERT INTO fleet VALUES (1);

CREATE TABLE ships (
  id INTEGER PRIMARY KEY,
  name TEXT,
  class TEXT,
  date_built DATE,
  start TEXT,
  finish TEXT
);

INSERT INTO ships (id, name, class, date_built, start, finish) VALUES (1, 'USS San Diego', 'Amphibious transport dock', '2012/5/19', '2016/5/2', '2016/6/2');
INSERT INTO ships (id, name, class, date_built, start, finish) VALUES (2, 'USS Roosevelt', 'Destroyer', '2000/11/04', '2016/2/2', '2016/8/2');
INSERT INTO ships (id, name, class, date_built, start, finish) VALUES (3, 'USS Abraham Lincoln', 'Aircraft carrier', '1989/11/11', '2000/5/2', '2000/12/2');
INSERT INTO ships (id, name, class, date_built, start, finish) VALUES (4, 'USS Key West', 'Attack submarine', '1987/9/11', '2000/7/2', '2016/8/20');
INSERT INTO ships (id, name, class, date_built, start, finish) VALUES (5, 'USS Oscar Austin', 'Destroyer', '2000/8/19', '2012/5/2', '2016/6/10');

CREATE TABLE sailors (
  id INTEGER PRIMARY KEY,
  name TEXT,
  date_birth INTEGER,
  rank TEXT
);

INSERT INTO sailors (id, name, date_birth, rank) VALUES (1, 'John smith', 1982, 'second lieutenant');
INSERT INTO sailors (id, name, date_birth, rank) VALUES (2, 'W. K. Alexander', 1995, 'cadet');
INSERT INTO sailors (id, name, date_birth, rank) VALUES (3, 'Richard H. Anderson', 1973, 'major');
INSERT INTO sailors (id, name, date_birth, rank) VALUES (4, 'James A. Bryan', 1990, 'cadet');
INSERT INTO sailors (id, name, date_birth, rank) VALUES (5, 'Clarence Derrick', 1980, 'Captain');
INSERT INTO sailors VALUES (6, 'James Augustus Washington', 1965, 'Colonel');

CREATE TABLE duties (
  id INTEGER PRIMARY KEY, 
  duration INTEGER,
  sailors_id INTEGER,
  ships_id INTEGER
);

INSERT INTO duties (id, duration, sailors_id, ships_id) VALUES (1, 500, 1, 1);
INSERT INTO duties (id, duration, sailors_id, ships_id) VALUES (2, 500, 2, 5);
INSERT INTO duties (id, duration, sailors_id, ships_id) VALUES (3, 500, 3, 4);
INSERT INTO duties (id, duration, sailors_id, ships_id) VALUES (4, 500, 4, 3);
INSERT INTO duties (id, duration, sailors_id, ships_id) VALUES (5, 500, 5, 2);
INSERT INTO duties (id, duration, sailors_id, ships_id) VALUES (6, 500, 6, 1);