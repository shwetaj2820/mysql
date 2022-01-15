SELECT 10!=10; #0

SELECT 15>14 AND 99-5<=94; #1

SELECT 1 IN (5,3) || 9 BETWEEN 8 AND 10; #1

# select all books written before 1980 - non inclusive
SELECT title,released_year FROM books WHERE released_year<1980;

# select all books written by Eggers or Chabon
SELECT title,author_lname FROM books WHERE author_lname='Eggers' OR author_lname='Chabon';

# select all books written by Lahiri published after 2000
SELECT title,author_lname,released_year FROM books WHERE author_lname='Lahiri' AND released_year>2000; 

# select all books with page count between 100 and 200 
SELECT title,pages FROM books WHERE pages BETWEEN 100 AND 200;

# select all books where author_lname starts with C or S
SELECT title,author_lname FROM books WHERE author_lname LIKE'C%' OR author_lname LIKE 'S%';

SELECT title,author_lname FROM books 
WHERE SUBSTR(author_lname,1,1) = 'C' OR SUBSTR(author_lname,1,1) = 'S';

SELECT title,author_lname FROM books 
WHERE substr(author_lname,1,1) IN ('C','S');

# if title contains 'stories' then short stories , 'just kids and a heartbreaking work' then memoir , everything else 'novels' 
SELECT title,author_lname, 
    CASE 
        WHEN title LIKE '%stories%' THEN 'Short Stories'
        WHEN title = 'Just Kids' OR title = 'A Heartbreaking Work of Staggering Genius' THEN 'Memoir'
        ELSE 'Novel'
    END AS TYPE
FROM books;

# create the given table
SELECT author_lname,
CASE 
    WHEN COUNT(*) = 1 THEN '1 book'
    ELSE CONCAT(COUNT(*), ' books')
END AS counts
FROM books
GROUP BY author_lname , author_fname;
