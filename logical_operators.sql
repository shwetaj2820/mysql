#     EQUALITY OPERATOR: =
SELECT * FROM books WHERE released_year=2017;

SELECT title,author_lname FROM books WHERE author_lname = 'Harris';

#     INEQUALITY OPERATOR: !=
SELECT * FROM books WHERE released_year!=2017;

SELECT title,author_lname FROM books WHERE author_lname != 'Harris';

#     NOT LIKE
SELECT title FROM books WHERE title LIKE 'W%'; # MATCHES THE PATTERN

SELECT title FROM books WHERE title NOT LIKE '%W%'; 

#     COMPARISON OPERATORS 
SELECT title , released_year FROM books WHERE released_year<2017 ORDER BY released_year;

SELECT title , stock_quantity FROM books WHERE stock_quantity >=100;

SELECT title FROM books WHERE released_year<2000 ORDER BY released_year;

# 	boolean logic - output 0/1
SELECT 99>1; #output: 1 -TRUE
SELECT 100<84; #output: 0-FALSE
SELECT 'a'>'b';
SELECT 'A'>'a';
SELECT 3<-10;
SELECT -10<-9;
SELECT 42<=42;
SELECT 'h'<'p';
SELECT 'Q'<='q';
SELECT author_lname FROM books WHERE author_lname = 'Eggers';
SELECT author_lname FROM books WHERE author_lname = 'eGGers';

