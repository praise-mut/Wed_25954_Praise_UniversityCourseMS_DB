-- Create Students table
CREATE TABLE Students (
    Student_ID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Department VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Phone VARCHAR(20) NOT NULL,
    CONSTRAINT valid_student_email CHECK (Email LIKE '%_@_%._%')
);

-- Create Professors table
CREATE TABLE Professors (
    Professor_ID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Department VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Phone VARCHAR(20) NOT NULL,
    CONSTRAINT valid_professor_email CHECK (Email LIKE '%_@_%._%')
);

-- Create Courses table
CREATE TABLE Courses (
    Course_ID INT PRIMARY KEY,
    Professor_ID INT NOT NULL,
    Name VARCHAR(100) NOT NULL,
    Credits INT NOT NULL,
    Department VARCHAR(50) NOT NULL,
    CONSTRAINT valid_credits CHECK (Credits BETWEEN 1 AND 6),
    FOREIGN KEY (Professor_ID) REFERENCES Professors(Professor_ID)
);

-- Create Enrollments table
CREATE TABLE Enrollments (
    Enrollment_ID INT PRIMARY KEY,
    Student_ID INT NOT NULL,
    Course_ID INT NOT NULL,
    Semester VARCHAR(20) NOT NULL,
    Grade VARCHAR(2) DEFAULT NULL,
    CONSTRAINT valid_grade CHECK (Grade IN ('A+', 'A', 'A-', 'B+', 'B', 'B-', 'C+', 'C', 'C-', 'D+', 'D', 'F', NULL)),
    CONSTRAINT unique_enrollment UNIQUE (Student_ID, Course_ID, Semester),
    FOREIGN KEY (Student_ID) REFERENCES Students(Student_ID),
    FOREIGN KEY (Course_ID) REFERENCES Courses(Course_ID)
);

-- Create Schedules table
CREATE TABLE Schedules (
    Schedule_ID INT PRIMARY KEY,
    Course_ID INT NOT NULL,
    Room_Number VARCHAR(20) NOT NULL,
    Time_Slot VARCHAR(30) NOT NULL,
    Day VARCHAR(10) NOT NULL,
    CONSTRAINT valid_day CHECK (Day IN ('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday')),
    CONSTRAINT unique_room_time_day UNIQUE (Room_Number, Time_Slot, Day),
    FOREIGN KEY (Course_ID) REFERENCES Courses(Course_ID)
);
