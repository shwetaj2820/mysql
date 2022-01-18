# select title and rating 
SELECT title,rating FROM series
JOIN reviews ON series.id = reviews.series_id;

# select average rating and group by title (hence use group by series.id)
SELECT 
    title,
    AVG(rating) AS avg_rating
FROM series
JOIN reviews ON series.id = reviews.series_id 
GROUP BY series.id ORDER BY avg_rating ;

# first name, last name and each rating
SELECT first_name,last_name,rating FROM reviewers
JOIN reviews
    ON reviewers.id = reviews.reviewers_id;
    
# identify unreviewed series hence use left join 
SELECT title AS unreviewed FROM series
LEFT JOIN reviews 
    ON series.id = reviews.series_id
WHERE rating IS NULL;

# identify genre and avg_rating
SELECT 
    genre,
    ROUND(AVG(rating),2) AS avg_rating
FROM series
    INNER JOIN reviews ON series.id = reviews.series_id
GROUP BY genre;

# analytics table (reviewer stats)
SELECT 
    first_name,
    last_name,
    COUNT(rating) AS COUNT,
    IFNULL(MIN(rating),0) AS MIN,
    IFNULL(MAX(rating),0) AS MAX,
    ROUND(IFNULL(AVG(rating),0),2) AS AVG,
    CASE
    WHEN COUNT(rating)>0 THEN 'ACTIVE'
    WHEN COUNT(rating)>=10 THEN 'POWER USER'
    ELSE 'INACTIVE'
    END AS STATUS
    # IF ELSE :
    # IF(COUNT(rating)>=1,'ACTIVE','INACTIVE') 
    # AS STATUS
    
FROM reviewers
LEFT JOIN 
    reviews ON reviewers.id = reviews.reviewers_id
GROUP BY reviewers_id;    

# PUTTING TOGETHER ALL THE THREE TABLES
SELECT 
    title,
    rating,
    CONCAT(first_name,' ',last_name) 
    AS 'reviewer'
FROM reviewers
INNER JOIN reviews
    ON reviewers.id = reviews.reviewers_id
INNER JOIN series
    ON series.id = reviews.series_id;
