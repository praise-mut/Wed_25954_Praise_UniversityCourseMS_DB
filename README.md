# 📘 University Course Management System – PL/SQL Capstone Project

## 👤 Student Info
- **Name:** Praise Mutijima
- **Student ID:** 25954
- **Course:** Database Development with PL/SQL (INSY 8311)
- **Lecturer:** Eric Maniraguha

---

## ✅ Phase I – Problem Statement & Presentation

### 📌 Problem Definition
Universities face challenges in managing course registrations, schedules, and grading. Manual operations lead to errors, inefficiencies, and limited access to academic records.

### 🏫 Context
This system will be used within a university to automate course registration, schedule assignment, and grade entry.

### 👥 Target Users
- Students
- Professors
- Administrators

### 🎯 Project Goals
- Automate registration and grade submission
- Prevent schedule conflicts
- Provide secure access to student records

### 📂 Main Entities
- Students
- Professors
- Courses
- Schedules
- Enrollments

### 📽️ Presentation
   [Click here to download the PowerPoint](./Wed_25954_praise_plsql.pptx)

---

## ✅ Phase II – Business Process Modeling (MIS)

### 📘 Overview
This phase models the flow of course registration, grade submission, and scheduling from the perspective of key actors: students, professors, administrators, and the system (MIS). It shows how the MIS supports and enhances decision-making and operational efficiency.

### 🧑‍🏫 Actors / Swimlanes
- **Student**: Registers for courses and views grades
- **Professor**: Manages course assignments and enters student grades
- **Administrator**: Schedules courses and assigns professors
- **System (MIS)**: Validates and stores all inputs, detects conflicts, and secures access

### 🧭 Process Modeled
1. Administrator creates the course schedule and assigns professors.
2. Student browses available courses and registers.
3. The system checks for conflicts and stores the enrollment.
4. At the end of the term, the professor submits grades.
5. The student views their grades through the system.

### 📊 Swimlane Diagram
![Swimlane Diagram](./SwimLanes.png)

### Model the Process
Steps to include in your diagram:
- Admin logs in and creates course schedule.
- Instructor is assigned to course.
- Student browses available courses.
- Student registers for selected courses.
- Instructor enters grades after course completion.
- Student views grades.
- MIS stores and updates data.

### Explanation of Business Process Model – University Course Management System

The modeled process demonstrates how students, professors, and administrators interact with a centralized MIS to manage academic operations. Students log in, view available courses, and register. The system checks for schedule conflicts before enrollment. Professors access assigned courses and submit student grades after course completion. The administrator manages course offerings and schedules, ensuring every course has an assigned professor and an available time slot.

The system enforces data integrity and access control. Students can only view their records, professors update only their assigned course grades, and admins handle course logistics. The MIS automates conflict detection and reduces errors, supporting fast, reliable decision-making.

This workflow increases efficiency, reduces administrative workload, and ensures accurate academic records. It directly supports MIS goals by streamlining operations, centralizing data, and improving data-driven decision-making.

  
### 🔍 Features of the Process Model
- Prevents scheduling conflicts using MIS logic
- Applies access control per user role (student/professor/admin)
- Centralizes grade storage and transcript access
- Encourages automation and traceability in the academic process

### 🧠 MIS Decision Support
- MIS checks time slots for overlap
- Records all actions for accountability
- Automatically restricts unauthorized actions (e.g., grade editing by students)


---

## ✅ Phase III – Logical Model Design - University Management System

### 📘 Overview
This phase defines the logical data model for the University Management System using the core primary entities based on the finalized ER diagram, which manages students, professors, courses, enrollments, and schedules.

### 🧱 Entity-Relationship (ER) Diagram
![Project Diagram](./ER_Diagram.png)

### 📂 Core Entities

#### Primary Entities
- **Students**: Contains student ID, name, department, email, and phone.
- **Professors**: Contains professor ID, name, department, email, and phone.
- **Courses**: Stores course ID, name, credits, department, and assigned professor ID.
- **Enrollments**: Join table to link students and courses, with enrollment ID, semester, and grade.
- **Schedules**: Associates a course with room, day, and timeslot.

### 🔗 Relationships (as per ER diagram)
- **Students → Enrollments**: One-to-Many (a student can enroll in many courses)
- **Courses → Enrollments**: One-to-Many (a course can have many enrolled students)
- **Professors → Courses**: One-to-Many (a professor can teach multiple courses)
- **Courses → Schedules**: One-to-One or One-to-Many (each course has a scheduled session)

### 🔐 Data Integrity Features
- **NOT NULL** constraints on all primary keys and essential fields
- **UNIQUE** constraints on identifiers such as email and course codes
- **CHECK** constraints (e.g., grade values, course credits, time slot formats)
- **Foreign Keys** to enforce referential integrity between students, courses, professors, and schedules

### 🔁 Normalization
The model is normalized to **3NF**:
- No repeating groups or partial dependencies
- All non-key attributes depend only on the primary key
- `Schedules` retains simplified structure (Room, TimeSlot, Day directly included)

### 💡 Key Design Decisions
1. **Simplified scheduling model**: room/time/day stored within Schedules without separating to avoid over-normalization.
2. **Join table Enrollments** handles many-to-many relationships between Students and Courses.
3. **Single professor assignment** per course ensures clear instructional responsibility.

### 📁 Files Included
- `university_core_schema.sql` – Updated DDL reflecting this structure
- `finalized_erd_diagram.png` – ERD based on this relationship
- `phase3_documentation.md` – Updated documentation summary

---

## ✅ Phase IV – Database Creation and Naming

### 📛 Database Name
- **Database/User Name:** Wed_25954_Praise_CourseMgmt_DB
- **Password:** Praise

### 🔑 Privileges
- Granted **DBA** role to user

### 🖥️ OEM Access
- OEM accessed at `https://localhost:5500/`
- SSL bypass used to open OEM successfully

### 📸 Screenshots
- OEM login page – **SPACE FOR SCREENSHOT**
- Database dashboard – **SPACE FOR SCREENSHOT**
- Schema and tables visible – **SPACE FOR SCREENSHOT**
- Users and roles – **SPACE FOR SCREENSHOT**
- Performance metrics (optional) – **SPACE FOR SCREENSHOT**

---

## ✅ Phase V – Table Implementation and Data Insertion

### 🧱 Table Implementation
- Created tables: Students, Professors, Courses, Enrollments, Schedules
- Primary and foreign keys correctly defined
- Data types and integrity constraints enforced

### 📥 Sample Data Inserted
- Realistic records inserted into each table (3–5 entries per table)
- Test data supports queries and use cases

### 🔍 Data Integrity Verification
- Checked referential integrity and constraint enforcement
- Executed SELECT queries to verify insertions

### 📸 Screenshots
- Table creation confirmation – **SPACE FOR SCREENSHOT**
- Sample data inserted – **SPACE FOR SCREENSHOT**
- Query results and validation – **SPACE FOR SCREENSHOT**

---

## ✅ Phase VI – Database Interaction and Transactions

### 🔄 Operations Performed
Implemented DDL and DML operations for managing students, courses, enrollments, schedules, and professors.

- **DML**: `INSERT`, `UPDATE`, `DELETE` for Students, Courses, Enrollments
- **DDL**: Created PL/SQL procedures, functions, cursors, and packages

### 🧩 Procedures & Functions
- `proc_register_student`: A parameterized procedure to register a student for a course
- `fn_get_student_gpa`: A function that returns the GPA of a student based on all grades

### 🔁 Cursor Example
- Used cursor to loop through a student’s enrollments and display course IDs and grades

### 🧪 Exception Handling
- Implemented in procedures/functions to handle duplicate entries and missing data gracefully using `EXCEPTION WHEN ...`

### 📦 Package Implementation
- `student_pkg` package created to encapsulate:
  - `proc_register_student`
  - `fn_get_student_gpa`

### 🧪 Testing Summary
- Procedures and functions tested using anonymous PL/SQL blocks and `DBMS_OUTPUT`
- Cursor loops and error-handling behaviors verified for different test scenarios

### 📸 Screenshots
- Procedure creation and compilation – **SPACE FOR SCREENSHOT**
- Function implementation and output – **SPACE FOR SCREENSHOT**
- Cursor loop output in `DBMS_OUTPUT` – **SPACE FOR SCREENSHOT**
- Package body and execution – **SPACE FOR SCREENSHOT**
- Overall interaction result – **SPACE FOR SCREENSHOT**

---

## ✅ Phase VII – Advanced Database Programming and Auditing

### 🔒 Access Restrictions
- Created `Holiday_Dates` table to store public holidays
- Inserted sample upcoming holiday records (June 2025)

### ⚠️ Trigger to Block DML Operations
- Trigger blocks `INSERT`, `UPDATE`, `DELETE` on `Enrollments` during:
  - Weekdays (Mon–Fri)
  - Public holidays (from `Holiday_Dates`)

### 🛡️ Auditing Trigger
- Trigger logs actions in `Audit_Log` table
- Logs user, action type, table name, time, and status

### 📋 Audit Table
- `Audit_Log`: Stores details of every change (Insert/Update/Delete)

### 🧪 Testing
- Attempted changes during restricted days → error raised
- Successful changes logged on weekend → recorded in `Audit_Log`

### 📸 Screenshots
- Holiday_Dates and Audit_Log table creation – **SPACE FOR SCREENSHOT**
- Blocking trigger creation – **SPACE FOR SCREENSHOT**
- Auditing trigger creation – **SPACE FOR SCREENSHOT**
- Attempt to change data during restricted time (error) – **SPACE FOR SCREENSHOT**
- Successful data change and audit log – **SPACE FOR SCREENSHOT**
- Querying Audit_Log – **SPACE FOR SCREENSHOT**

---

## 🔜 Next: Phase VIII – Documentation and Presentation
(Final GitHub Report & PowerPoint)
