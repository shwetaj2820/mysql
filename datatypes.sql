#INT - INTEGER 
#DECIMAL(precision,scale)

CREATE TABLE items(price DECIMAL(5,2));

INSERT INTO items(price) VALUES(7);

INSERT INTO items(price) VALUES(237401837);

INSERT INTO items(price) VALUES(299.99999);

INSERT INTO items(price) VALUES(1.9999);

SELECT * FROM items;
