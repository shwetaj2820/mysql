# using IN 
# select all books written by Carver or Lahiri or Smith

SELECT title,author_lname FROM books WHERE author_lname='Carver' OR author_lname='Lahiri' OR author_lname='Smith';

SELECT title,author_lname FROM books WHERE author_lname IN('Carver','Lahiri','Smith');

# using NOT IN 
# select all books where release year is not even 
SELECT title,released_year FROM books WHERE released_year NOT IN (2000,2002,2004,2006,2008,2010,2012,2014,2016);

SELECT title,released_year FROM books WHERE released_year>=2000 AND released_year NOT IN (2000,2002,2004,2006,2008,2010,2012,2014,2016) 
ORDER BY released_year;

SELECT title,released_year FROM books WHERE released_year>=2000 AND released_year%2 != 0 ORDER BY released_year;
