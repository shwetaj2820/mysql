CREATE TABLE comments(
    content VARCHAR(100),
    created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO comments(content) VALUES('funny article'),('I found this offensive');

SELECT * FROM comments;

SELECT * FROM comments ORDER BY created_at DESC;

CREATE TABLE comments2(
    content VARCHAR(100),
    changed_at TIMESTAMP DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP # also can use : ON UPDATE NOW()
);

INSERT INTO comments2(content) VALUES
('gibberish'),('lolololol'),('i like cats');

UPDATE comments2 SET content = 'this is not gibberish' WHERE content = 'gibberish';

SELECT * FROM comments2;

SELECT * FROM comments2 ORDER BY changed_at;


