DROP DATABASE IF EXISTS studentexamportal;
CREATE DATABASE StudentExamPortal;
USE StudentExamPortal;

CREATE TABLE Students(
  student_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL,
  enrollment_date DATE 
);

CREATE TABLE Courses(
  course_id INT PRIMARY KEY AUTO_INCREMENT,
  course_name VARCHAR(100) NOT NULL,
  instructor VARCHAR(100) 
);

CREATE TABLE Exams(
 exam_id INT PRIMARY KEY AUTO_INCREMENT,
 course_id INT,
 exam_date DATE,
 exam_type VARCHAR(50),
 FOREIGN KEY (course_id) REFERENCES Courses(course_id) 
);

CREATE TABLE Results(
result_id INT PRIMARY KEY AUTO_INCREMENT,
student_id INT,
exam_id INT,
score DECIMAL(5,2),
grade CHAR(2),
FOREIGN KEY (student_id) REFERENCES Students(student_id),
FOREIGN KEY (exam_id) REFERENCES Exams(exam_id)
);