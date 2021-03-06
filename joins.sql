CREATE TABLE student(
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50)
);

CREATE TABLE papers(
    title VARCHAR(100),
    grade INT,
    student_id INT,
    FOREIGN KEY (student_id) 
        REFERENCES student(id)
        ON DELETE CASCADE
#     on delete cascade - used to delete child row when parent row is deleted
);

INSERT INTO student(first_name) VALUES
('Caleb'),('Samantha'),('Raj'),('Carlos'),('Lisa');

INSERT INTO papers(student_id,title,grade) VALUES
(1,'My First Book Report',60),
(1,'My Second Book Report',75),
(2,'Russian Lit Through The Ages',94),
(2,'De Montaigne and The Art of The Essay',98),
(4,'Borges and Magical Realism',89)
;

SELECT first_name,title,grade FROM student
INNER JOIN papers ON student.id = papers.student_id
ORDER BY grade DESC;

# same above query using right join

SELECT first_name,title,grade FROM student
RIGHT JOIN papers ON student.id = papers.student_id
ORDER BY grade DESC;

# LEFT JOIN
SELECT first_name,title,grade FROM student
LEFT JOIN papers ON student.id = papers.student_id
ORDER BY grade DESC;

# substitute null title,grade as missing,0
SELECT 
    first_name,
    IFNULL(title,'missing'),
    IFNULL(grade,0)
FROM student
LEFT JOIN papers
    ON student.id = papers.student_id;
    
# FIND AVERAGE OF STUDENTS GRADES OF ALL PAPERS

SELECT 
    first_name,
    AVG(grade) AS average
FROM student
LEFT JOIN papers
    ON student.id = papers.student_id
GROUP BY student.id ORDER BY average DESC;

# student pass if average grade>75 ; fail if average grade<75
SELECT 
    first_name,
    AVG(grade) AS average,
    CASE 
        WHEN AVG(grade) IS NULL THEN 'FAILING'
        WHEN AVG(grade)>75 THEN 'PASSING'
        ELSE 'FAILING'
    END AS 'passing status'
FROM student
LEFT JOIN papers
    ON student.id = papers.student_id
GROUP BY student.id ORDER BY average DESC;
