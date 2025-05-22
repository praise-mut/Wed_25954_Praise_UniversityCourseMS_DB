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

### 🔍 Scope
This phase models the process of course registration, scheduling, and grade submission, and how users interact with the MIS to manage these workflows.

### 🔑 Key Entities
- Student
- Professor
- Administrator
- System (MIS database)

### 📊 Swimlane Diagram
**SPACE FOR SCREENSHOT**

### 📄 Explanation
The process begins with administrators creating course schedules. Students log in, view courses, and register. The system validates inputs and prevents conflicts. Professors then enter grades, which students can view. All activities are securely handled and logged by the system.

---

## ✅ Phase III – Logical Model Design - University Management System

### 📘 Overview
This phase defines the logical data model for the University Management System using only the required **primary entities** for managing students, professors, courses, departments, and enrollments. Supporting entities are omitted unless explicitly required.

### 🧱 Entity-Relationship (ER) Diagram
**SPACE FOR SCREENSHOT** *(ER diagram includes only primary entities)*

### 📂 Core Entities

#### Primary Entities Only
- **Students**: Stores student personal information, department affiliation, and contact details.
- **Professors**: Contains faculty information, including department and role.
- **Departments**: Lists academic departments and associated metadata.
- **Courses**: Describes course offerings, including course name, credits, and assigned professor.
- **Enrollments**: Tracks which students are enrolled in which courses each semester, along with grades.

### 🔗 Key Relationships
- **Departments → Students, Professors, Courses** (One-to-Many)
- **Professors → Courses** (One-to-Many)
- **Students ↔ Courses** (Many-to-Many via Enrollments)

### 🔐 Data Integrity Features
- **NOT NULL** constraints on primary keys and required fields
- **UNIQUE** constraints on email, department name, course codes
- **CHECK** constraints on grade values (e.g., A–F), course credits
- **DEFAULT** values for applicable status or timestamp fields

### 🔁 Normalization
The model follows **Third Normal Form (3NF)**:
- 1NF: No repeating groups, atomic values
- 2NF: No partial dependencies
- 3NF: No transitive dependencies — departments, professors, and courses separated

### 💡 Key Design Decisions
1. **Simplified model** with only essential tables
2. **Enrollment table** handles many-to-many student-course mapping
3. **Department reference** in each primary entity avoids redundancy

### 📁 Files Included
- `university_core_schema.sql` – DDL for Students, Professors, Courses, Departments, Enrollments
- `core_erd_diagram.png` – ERD with primary entities only
- `phase3_documentation.md` – This documentation

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
