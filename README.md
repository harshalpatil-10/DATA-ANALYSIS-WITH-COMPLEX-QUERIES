# DATA-ANALYSIS-WITH-COMPLEX-QUERIES

*COMPANY* : CODTECH IT SOLUTIONS

*NAME* : HARSHAL PATIL

*INTERN ID* : CTIS2550

*DOMAIN* : SQL

*DURATION* : 4 WEEKS

*MENTOR* : NEELA SANTOSH

*DESCRIPTION OF TASK*

The objective of Task 2 was to perform advanced data analysis using SQL by applying concepts such as subqueries, Common Table Expressions (CTEs), and window functions. This task goes beyond basic SQL operations and focuses on extracting meaningful insights, identifying patterns, and generating analytical reports from relational data. Advanced SQL techniques are widely used in real-world applications such as student placement systems, recruitment portals, academic analytics platforms, and enterprise reporting systems.

For this task, a separate set of tables was designed to simulate a student placement management scenario, ensuring that Task 2 used different tables from Task 1 as required. The primary tables used were Students, Job_Postings, and Applications. The Students table stores basic student details such as student ID, name, branch, and CGPA. The Job_Postings table stores information related to available job roles offered by different companies. The Applications table acts as a bridge between Students and Job_Postings, tracking which student has applied for which job, along with application status and application date. These tables are logically connected and represent a realistic placement database structure.

The implementation of this task was carried out using MySQL as the database management system and MySQL Workbench as the development platform. All queries were written using Structured Query Language (SQL), following standard MySQL syntax. Proper primary key and foreign key relationships were maintained to ensure data integrity and accurate query results. Sample data was inserted into all tables to represent multiple scenarios such as students applying for multiple jobs, students applying for a single job, and varying application statuses.

The first part of Task 2 focused on using a subquery to analyze student application behavior. A subquery was used to identify students who had applied for more than one job. This type of analysis is useful in placement systems to identify highly active students or to study application trends among candidates. Subqueries help break down complex logic into manageable parts and allow filtering based on aggregated results.

The second part of the task involved the use of a Common Table Expression (CTE). A CTE was used to calculate the total number of applications submitted by each student. CTEs improve query readability and maintainability by creating temporary result sets that can be reused within the same query. This approach is commonly used in reporting systems where intermediate results need to be referenced multiple times. The CTE-based analysis provided a clear view of student participation levels in the placement process.

The third part of Task 2 introduced window functions, which are essential for advanced analytics. The RANK() window function was used to rank students based on the number of job applications submitted. Unlike traditional aggregation queries, window functions allow ranking and analysis without collapsing rows, making them ideal for dashboards and performance comparisons. This ranking helps placement officers or administrators identify the most active students.

Finally, the ROW_NUMBER() window function was used to assign an application order number to each student based on application date. This analysis is useful for tracking the sequence of applications submitted by students and for generating chronological reports. Window functions such as ROW_NUMBER() are widely used in pagination, reporting, and data analysis systems.

*OUTPUT*

1.SUBQUERY (STUDENT ANALYSIS)
<img width="947" height="604" alt="Image" src="https://github.com/user-attachments/assets/9d47658a-3075-44ab-83ee-06f272c00556" />

2.CTE (APPLICATION COUNT REPORT)
<img width="887" height="706" alt="Image" src="https://github.com/user-attachments/assets/f82ca51d-0168-4a84-b3f1-4a2c8b545c6b" />

3.WINDOW FUNCTION (RANK STUDENTS) 
<img width="870" height="628" alt="Image" src="https://github.com/user-attachments/assets/b04f3421-39aa-4cea-955b-2e56193a4021" />

# 4.WINDOW FUNCTION (ROW_NUMBER) : Assign application order per student



Overall, Task 2 demonstrated how advanced SQL features can be used to analyze data, identify trends, and generate meaningful insights from relational databases. All SQL queries were written with proper commenting for clarity and understanding, and the complete task was organized and uploaded to a public GitHub repository as per the internship guidelines. This task significantly enhanced my understanding of advanced SQL concepts and their practical applications in real-world database-driven systems.
