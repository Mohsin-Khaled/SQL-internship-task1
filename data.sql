USE StudentExamPortal;

-- Insert student records
INSERT INTO Students(name, email, enrollment_date)
VALUES
('Max', 'maxy234@gmail.com', '2025-09-01'),
('Aarav Singh', 'aarav.singh@example.com', '2025-08-15'),
('Abdul Raheem', 'araheem@example.com', '2025-08-20'),
('John', 'john@example.com', '2025-09-05');

-- Insert course records
INSERT INTO Courses(course_name, instructor)
VALUES
('AI', 'Dr. Mehta'),
('Python Programming', 'Ms. Kavita Rao'),
('Database Systems', 'Mr. Anil Kumar'),
('Machine Learning', 'Dr. Sneha Verma');

-- Insert exam records linked to course_id
INSERT INTO Exams(course_id, exam_date, exam_type)
VALUES
(1, '2023-09-22', 'Midterm'),   -- AI
(2, '2025-09-25', 'Midterm'),   -- Python Programming
(3, '2025-10-01', 'Quiz'),      -- Database Systems
(4, '2025-10-05', 'Final');     -- Machine Learning

-- Insert result records linked to student_id and exam_id
INSERT INTO Results(student_id, exam_id, score, grade)
VALUES
(1, 1, 90.0, 'A'),
(2, 2, 85.0, 'B'),  
(3, 3, 78.5, 'C'),   
(4, 4, 95.0, 'D');  

-- View all tables and data
SHOW TABLES;
SELECT * FROM Students;
SELECT * FROM Courses;
SELECT * FROM Exams;
SELECT * FROM Results; 