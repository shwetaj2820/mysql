#sum
SELECT SUM(pages) FROM books;

#sum and group by
SELECT author_fname,author_lname,SUM(pages) FROM books GROUP BY author_lname,author_fname;

#average
SELECT AVG(released_year) FROM books;

#AVG and group by 
SELECT released_year,AVG(stock_quantity) FROM books GROUP BY released_year;

SELECT author_fname,author_lname,AVG(pages) FROM books GROUP BY author_lname,author_fname;
