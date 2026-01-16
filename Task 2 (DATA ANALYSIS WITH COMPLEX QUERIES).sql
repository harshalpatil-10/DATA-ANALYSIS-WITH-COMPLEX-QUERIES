use codtech_sql;
CREATE TABLE students (           # ---Stores basic student information used in placement analysis
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    branch VARCHAR(50),
    cgpa DECIMAL(3,2)
);
CREATE TABLE applications (           # ---Acts as a bridge table between students and job postings.Tracks which student applied for which job
    application_id INT PRIMARY KEY,
    student_id INT,
    job_id INT,
    status VARCHAR(30),
    application_date DATE,
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);
CREATE TABLE job_postings_task2 (       # ---Stores job details offered by companies
    job_id INT PRIMARY KEY,
    job_title VARCHAR(100),
    company_name VARCHAR(100)
);
INSERT INTO students VALUES
(1, 'Amit', 'Computer', 8.5),
(2, 'Neha', 'IT', 9.1),
(3, 'Ravi', 'Computer', 7.8),
(4, 'Priya', 'ENTC', 8.9);
INSERT INTO job_postings_task2 VALUES
(101, 'Software Engineer', 'TCS'),
(102, 'Data Analyst', 'Infosys'),
(103, 'System Engineer', 'Wipro');
INSERT INTO applications VALUES
(1, 1, 101, 'Applied', '2024-06-01'),
(2, 2, 101, 'Shortlisted', '2024-06-02'),
(3, 2, 102, 'Applied', '2024-06-03'),
(4, 3, 101, 'Rejected', '2024-06-02'),
(5, 4, 103, 'Applied', '2024-06-04');

# 1.SUBQUERY (STUDENT ANALYSIS) :  To find students who have applied for more than one job

SELECT student_name
FROM students
WHERE student_id IN (
    SELECT student_id
    FROM applications
    GROUP BY student_id
    HAVING COUNT(job_id) > 1
);

# 2.CTE (APPLICATION COUNT REPORT) : To count number of applications per student

WITH application_count AS (
    SELECT 
        s.student_name,
        COUNT(a.application_id) AS total_applications
    FROM students s
    LEFT JOIN applications a
    ON s.student_id = a.student_id
    GROUP BY s.student_name
)
SELECT *
FROM application_count;

# 3.WINDOW FUNCTION (RANK STUDENTS) : Rank students based on number of applications

WITH application_count AS (
    SELECT 
        s.student_name,
        COUNT(a.application_id) AS total_applications
    FROM students s
    LEFT JOIN applications a
    ON s.student_id = a.student_id
    GROUP BY s.student_name
)

# 4.WINDOW FUNCTION (ROW_NUMBER) : Assign application order per student
SELECT 
    s.student_name,
    j.job_title,
    ROW_NUMBER() OVER (PARTITION BY s.student_id ORDER BY a.application_date) AS application_order
FROM students s
JOIN applications a ON s.student_id = a.student_id
JOIN job_postings_task2 j ON a.job_id = j.job_id;





