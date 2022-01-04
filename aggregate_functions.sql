SELECT MIN(released_year) FROM books;

SELECT MIN(pages) FROM books;

SELECT MAX(released_year) FROM books;

SELECT MAX(pages),title FROM books; #returns incorrect output

#hence use sub-queries

SELECT * FROM books 
WHERE pages = (SELECT MIN(pages) FROM books);

#method 2 - use order by

SELECT * FROM books ORDER BY pages LIMIT 1; #TO GET SHORTEST BOOK

SELECT * FROM books ORDER BY pages DESC LIMIT 1; #TO GET THE LONGEST BOOK

#method 3 - use group by

SELECT author_fname,author_lname,MIN(released_year) FROM books GROUP BY author_lname,author_fname; #TO FIND OLDEST BOOK OF AUTHOR

