#number of books in database
SELECT COUNT(*) FROM books;

#how many books were released each year
SELECT 
	released_year AS year,
	COUNT(*) AS 'total books' 
FROM books GROUP BY released_year;

#total books in stock
SELECT SUM(stock_quantity) FROM books;

#average release year for each author
SELECT 
	author_fname,
	author_lname,
	AVG(released_year) 
FROM books GROUP BY author_lname,author_fname;

#full name of the author who wrote the longest book 
SELECT CONCAT(author_fname,' ',author_lname) AS 'full name' FROM books #STEP2
	WHERE pages = (SELECT MAX(pages) FROM books); #STEP1

#method2 to find full name of author who wrote the longest books
SELECT CONCAT(author_fname,' ',author_lname) AS 'full name' FROM books ORDER BY pages DESC LIMIT 1;

SELECT
	released_year AS 'year',
	COUNT(*) AS '# books',
	AVG(pages) AS 'avg pages'
FROM books GROUP BY released_year;
	
