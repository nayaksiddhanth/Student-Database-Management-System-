Create database student_database;
Use student_database;

CREATE TABLE student_table (
    Student_id INT PRIMARY KEY AUTO_INCREMENT,
    Stu_name TEXT,
    Department TEXT,
    Email_id TEXT,
    Phone_no NUMERIC,
    Address TEXT,
    Date_of_birth DATE,
    Gender TEXT,
    Major TEXT,
    GPA NUMERIC (3,1),
    Grade TEXT CHECK (Grade IN ('A', 'B', 'C', 'D', 'F'))
);

-- 2. Student Database Management System (Data Entry)

INSERT INTO student_table (Stu_name, Department, Email_id, Phone_no, Address, Date_of_birth, Gender, Major, GPA, Grade)
VALUES ('Charles', 'Computer Science', 'charles@abc.com', '1111111111', '1, main rd, las vegas', '1999-01-01', 'Male', 'Computer Science', 10.0, 'A'),
('Carlos', 'Business', 'carlos@abc.com', '2222222223', '2, main rd, las vegas', '1999-02-02', 'Male', 'Business Administration', 8.0, 'B'),
('Selena', 'Engineering', 'selena@abc.com', '5555555555', '3, main rd, las vegas', '1999-03-03', 'Male', 'Mechanical Engineering', 10.0, 'A'),
('Natalie', 'Biology', 'natalie@example.com', '2222222222', '4, main rd, las vegas', '1999-04-04', 'Female', 'Biology', 4.0, 'D'),
('Max', 'Computer Science', 'max@abc.com', '7777777777', '5, main rd, las vegas', '1999-05-05', 'Male', 'Computer Science', 6.0, 'C'),
('Racheal', 'Business', 'racheal@abc.com', '9999999999', '6, main rd, las vegas', '1999-06-06', 'Female', 'Marketing', 10.0, 'A'),
('Sergio', 'Engineering', 'sergio@abc.com', '4444444444', '7, main rd, las vegas', '1999-07-07', 'Male', 'Electrical Engineering', 10.0, 'A'),
('Megan', 'Biology', 'megan@abc.com', '6666666666', '8, main rd, las vegas', '1999-08-08', 'Female', 'Ecology', 2.0, 'F'),
('Pablo', 'Computer Science', 'pablo@abs.com', '8888888888', '9, main rd, las vegas', '1999-09-09', 'Male', 'Computer Engineering', 4.0, 'D'),
('Marc', 'Business', 'marc@abc.com', '3333333333', '10, main rd, las vegas', '1999-10-10', 'Female', 'Finance', 8.0, 'B');

-- 3. Student Database Management System (Student Information Retrieval)

SELECT * FROM student_table ORDER BY GRADE aSC;

-- 4. Student Database Management System (Query for Mail Students)

SELECT * FROM student_table WHERE Gender = 'Male';

-- 5. Student Database Management System (Query for students with GPA less than 5.0)

SELECT * FROM student_table WHERE GPA < 5.0 ;

-- 6. Student Database Management System (Query to update Student Email and Grade)

UPDATE student_table SET Email_ID = 'new_ID@abc.com', Grade = 'B', GPA = 8.0 WHERE Student_id = 8;

-- 7. Student Database Management System (Query to retrieve name and age of students with Grade B)

SELECT Stu_name, FLOOR (DATEDIFF(CURDATE(), Date_of_birth) /365.25) AS Age FROM student_table WHERE Grade = 'B';

-- 8. Student Database Management System (Grouping and calculation)

SELECT Department, Gender, AVG(GPA) AS AVG_GPA FROM student_table GROUP BY Department, Gender;

-- 9. Student Database Management System (Table Renaming)

ALTER TABLE student_table RENAME TO student_info;

-- 10. Student Database Management System (Retrieve student with highest GPA)

SELECT Stu_name FROM student_info ORDER BY GPA DESC LIMIT 1;