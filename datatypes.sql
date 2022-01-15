# BETWEEN X AND Y
# select all books published between 2004 and 2015

SELECT title,released_year FROM books WHERE released_year>=2004 AND released_year<=2015 ORDER BY released_year;

SELECT title,released_year FROM books WHERE released_year BETWEEN 2004 AND 2015 ORDER BY released_year;

# NOT BETWEEN X AND Y
# select all books not published between 2004 and 2015

SELECT title,released_year FROM books WHERE released_year<=2004 OR released_year>=2015 ORDER BY released_year;

SELECT title,released_year FROM books WHERE released_year NOT BETWEEN 2004 AND 2015 ORDER BY released_year;
