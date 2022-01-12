#STORING TEXT
# CHAR -faster for fixed length text - hence it is fixed length (the trailing characters are truncated)
# VARCHAR - variable length string

CREATE TABLE dogs(
    name CHAR(5),
    breed VARCHAR(10)
);

INSERT INTO dogs(name,breed) VALUES('bob','beagle') , ('robby','corgi') , ('Princess Jane','Retriever') , ('Princess Jane','dhfurnfdjfhsdue');

SELECT * FROM dogs;

