# FLOAT and DOUBLE ARE floating types and calculations are approximate - hence store larger numbers with less space
# DECIMAL is fixed point and calculation is exact

# float - 4 bytes - precision issue after 7 digits
# double - 8 bytes - precision issue after 15 digits

CREATE TABLE things(price FLOAT);

INSERT INTO things(price) VALUES(88.45),(8877.45),(8877665544.45);

SELECT * FROM things;
