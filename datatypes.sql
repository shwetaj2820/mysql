# CASE STATEMENTS
# mention genre as : if released year >  2000 then genre = modern lit ; else genre = 20th century lit

# CASE 
	# WHEN .. THEN
	# ELSE
# END AS
SELECT title,released_year ,
	CASE 
		WHEN released_year >=2000 THEN 'Modern Lit'
		ELSE '20th Century Lit'
	END AS GENRE
FROM books;


SELECT title,stock_quantity ,
	CASE 
		WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
		WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
		ELSE '***'
	END AS stock 
FROM books;

# alternative to above 
SELECT title,stock_quantity ,
	CASE 
		WHEN stock_quantity <=50 THEN '*'
		WHEN stock_quantity <=100 THEN '**'
		ELSE '***'
	END AS stock 
FROM books;


