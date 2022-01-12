# DATE -values with a date but without time 'YYYY-MM-DD'
# TIME -values with a time 'HH-MM-SS'
# DATETIME -values with date and time 'YYYY-MM-DD HH-MM-SS'

CREATE TABLE people (name VARCHAR(100), birthdate DATE, birthtime TIME, birthdt DATETIME);
 
INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES('Padma', '1983-11-11', '10:07:35', '1983-11-11 10:07:35');
 
INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES('Larry', '1943-12-25', '04:10:42', '1943-12-25 04:10:42');

# CURDATE()-gives current date,CURTIME()-gives current time,NOW()-gives current datetime
INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES('Toaster',CURDATE(),CURTIME(),NOW());

SELECT * FROM people;
