# logical AND - all conditions are true also can use &&
SELECT title FROM books WHERE author_lname='Eggers';
SELECT title FROM books WHERE released_year>2010;
SELECT title,author_lname,released_year FROM books WHERE author_lname='Eggers' && released_year>2010;

SELECT title,author_lname,released_year FROM books WHERE author_lname = 'Eggers' AND released_year>2010 AND title LIKE '%novel%';

# logical OR  - at least one condition is true also can use ||
SELECT title FROM books WHERE author_lname='Eggers';
SELECT title FROM books WHERE released_year>2010;
SELECT title,author_lname,released_year FROM books WHERE author_lname='Eggers' OR released_year>2010;

SELECT title,author_lname,released_year FROM books WHERE author_lname = 'Eggers' OR released_year>2010 OR title LIKE '%novel%';
