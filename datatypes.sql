#date math 
# DATEDIFF(expression1,expression2) DIFFERENCE BETWEEN 2 DATES

SELECT DATEDIFF(NOW(),birthdate) FROM people;

SELECT birthdt,DATE_ADD(birthdt,INTERVAL 1 MONTH) FROM people;

SELECT birthdt,DATE_ADD(birthdt,INTERVAL 3 QUARTER) FROM people;

SELECT birthdt,birthdt+INTERVAL 1 MONTH FROM people;

SELECT birthdt,DATE_SUB(birthdt,INTERVAL 1 MONTH) FROM people;

SELECT birthdt,birthdt-INTERVAL 1 MONTH FROM people;
