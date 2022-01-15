
# casting - converting data types
SELECT CAST('2017-09-23' AS DATETIME);

SELECT name,birthdt FROM people WHERE birthdt BETWEEN '1980-01-01' AND '2000-01-01' ORDER BY birthdt; # the dates are treated as strings

#better option - casting string to datetime
SELECT name,birthdt FROM people WHERE birthdt BETWEEN CAST('1980-01-01' AS DATETIME) AND CAST('2000-01-01' AS DATETIME) ORDER BY birthdt;
