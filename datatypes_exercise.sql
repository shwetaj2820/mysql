# good use case of CHAR - it is fixed length

CREATE TABLE inventory(
    itemname VARCHAR(20),
    price DECIMAL(8,2), #WHEN PRICE IS ALWAYS LESS THAN 1 MILLION
    quantity INT
);

# difference between datetime and timestamp They both store datetime information, but there's a difference in the range, 
# TIMESTAMP has a smaller range. TIMESTAMP also takes up less space. 
# TIMESTAMP is used for things like meta-data about when something is created
# or updated.

SELECT CURTIME();

SELECT CURDATE();

SELECT DAYOFWEEK(CURDATE());
SELECT DAYOFWEEK(NOW());

SELECT DATE_FORMAT(NOW(),'%w');

SELECT DATE_FORMAT(NOW(),'%W');
SELECT DATE_FORMAT(CURDATE(),'%m/%d/%Y');

SELECT DATE_FORMAT(NOW(),'%M %D at %h:%i');

CREATE TABLE tweets(
    content VARCHAR(20),
    username VARCHAR(20),
    created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO tweets(content,username) VALUES('first tweet','shweta');

SELECT * FROM tweets;
