# date formatting

SELECT DATE_FORMAT('2000-09-28 22:23:00' , '%W%M%Y');    #using specifiers

SELECT CONCAT(MONTHNAME(birthdate),' ',DAY(birthdate),' ',YEAR(birthdate)) FROM people;

SELECT name,DATE_FORMAT(birthdt,'was born on %W') FROM people;

SELECT DATE_FORMAT(birthdt,'%d/%m/%Y') FROM people;

SELECT DATE_FORMAT(birthdt,'%d/%m%/%Y at %h:%i') FROM people;
