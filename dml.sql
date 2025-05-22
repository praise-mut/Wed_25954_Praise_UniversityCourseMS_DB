--INSERTING INTO STUDENTS TABLE
INSERT INTO Students (Student_ID, Name, Department, Email, Phone) VALUES
(1, 'Alice Johnson', 'Computer Science', 'alice.johnson@example.edu', '123-456-7890');
INSERT INTO Students (Student_ID, Name, Department, Email, Phone) VALUES
(2, 'Bob Smith', 'Information Systems', 'bob.smith@example.edu', '234-567-8901');
INSERT INTO Students (Student_ID, Name, Department, Email, Phone) VALUES
(3, 'Catherine Lee', 'Computer Science', 'catherine.lee@example.edu', '345-678-9012');

--INSERTING INTO PROFESSORS TABLE
INSERT INTO Professors (Professor_ID, Name, Department, Email, Phone) VALUES
(101, 'Dr. Emily Davis', 'Computer Science', 'emily.davis@university.edu', '456-789-0123');
INSERT INTO Professors (Professor_ID, Name, Department, Email, Phone) VALUES
(102, 'Dr. John Miller', 'Information Systems', 'john.miller@university.edu', '567-890-1234');

--INSERTING INTO COURSES TABLE
INSERT INTO Courses (Course_ID, Professor_ID, Name, Credits, Department) VALUES
(1001, 101, 'Database Systems', 3, 'Computer Science');
INSERT INTO Courses (Course_ID, Professor_ID, Name, Credits, Department) VALUES
(1002, 101, 'Data Structures', 4, 'Computer Science');
INSERT INTO Courses (Course_ID, Professor_ID, Name, Credits, Department) VALUES
(1003, 102, 'E-commerce Systems', 3, 'Information Systems');

--INSERTING INTO ENROLLMENTS TABLE
INSERT INTO Enrollments (Enrollment_ID, Student_ID, Course_ID, Semester, Grade) VALUES
(1, 1, 1001, 'Fall 2024', 'A');
INSERT INTO Enrollments (Enrollment_ID, Student_ID, Course_ID, Semester, Grade) VALUES
(2, 1, 1002, 'Fall 2024', 'B+');
INSERT INTO Enrollments (Enrollment_ID, Student_ID, Course_ID, Semester, Grade) VALUES
(3, 2, 1003, 'Fall 2024', 'A-');
INSERT INTO Enrollments (Enrollment_ID, Student_ID, Course_ID, Semester, Grade) VALUES
(4, 3, 1001, 'Fall 2024', 'B');
INSERT INTO Enrollments (Enrollment_ID, Student_ID, Course_ID, Semester, Grade) VALUES
(5, 3, 1003, 'Fall 2024', 'A');

--INSERTING INTO SCHEDULES TABLE
INSERT INTO Schedules (Schedule_ID, Course_ID, Room_Number, Time_Slot, Day) VALUES
(201, 1001, 'Room A101', '08:00-09:30', 'Monday');
INSERT INTO Schedules (Schedule_ID, Course_ID, Room_Number, Time_Slot, Day) VALUES
(202, 1002, 'Room A102', '10:00-11:30', 'Wednesday');
INSERT INTO Schedules (Schedule_ID, Course_ID, Room_Number, Time_Slot, Day) VALUES
(203, 1003, 'Room B201', '13:00-14:30', 'Tuesday');
