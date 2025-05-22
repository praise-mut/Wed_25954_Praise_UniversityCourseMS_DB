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
**SPACE FOR SCREENSHOT**

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
This phase designs a detailed logical data model for the University Management System, managing students, professors, courses, enrollments, schedules, and academic operations.

### 🧱 Entity-Relationship (ER) Diagram
**SPACE FOR SCREENSHOT** *(Insert ER Diagram here)*

### 📂 Core Entities

#### Primary Entities
- **Students**: Student information, department affiliation, contact details
- **Professors**: Faculty information, department assignment, position details
- **Departments**: Academic departments with location and chair assignment
- **Courses**: Course offerings with credits, codes, and descriptions
- **Enrollments**: Student-course registrations with grades and status

#### Supporting Entities
- **Academic_Periods**: Semester and year management
- **Rooms**: Classroom information with capacity and type
- **Time_Slots**: Class scheduling time periods
- **Schedules**: Course-room-time assignments

### 🔗 Key Relationships
- **Departments → Students/Professors/Courses** (One-to-Many)
- **Professors → Courses** (One-to-Many)
- **Students ↔ Courses** (Many-to-Many via Enrollments)
- **Courses → Schedules** (One-to-Many)

### 🔐 Data Integrity Features

#### Constraints Applied
- **NOT NULL**: All primary keys and essential attributes
- **UNIQUE**: Email addresses, course codes, department names
- **CHECK**: Email format, grade values (A+ to F), credits (1–6), room capacity > 0
- **DEFAULT**: Current dates, active status values

#### 🔁 Normalization
Designed to **Third Normal Form (3NF)**:
- **1NF**: Atomic values, no repeating groups
- **2NF**: No partial dependencies
- **3NF**: No transitive dependencies, separate reference tables

### 🧠 Key Design Decisions
1. **Department Normalization**: Separate table eliminates redundancy
2. **Academic Period Management**: Flexible semester/year structure
3. **Schedule Optimization**: Separate rooms and time slots for conflict prevention
4. **Composite Constraints**: Prevent double-booking and duplicate enrollments

### 📁 Files Included
- `university_database_schema.sql` – Complete DDL scripts
- `erd_diagram.png` – Entity-Relationship Diagram
- `phase3_documentation.md` – This documentation

### 🚀 Future Readiness
- Prepared for Phase 7 holiday restrictions
- Audit logging capabilities
- Scalable design with proper indexing

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
- **DML**: Insert, Update, Delete for Students, Courses, Enrollments
- **DDL**: Create tables, procedures, functions, packages

### 🧩 Procedures & Functions
- `proc_register_student`: Registers students and handles duplicates
- `fn_get_student_gpa`: Returns a student’s average grade

### 🔁 Cursor Example
- Lists course enrollments for a given student

### 📦 Package
- `student_pkg` created to wrap and organize procedures/functions

### 🧪 Testing
- All procedures tested using `DBMS_OUTPUT`

### 📸 Screenshots
- Procedure creation – **SPACE FOR SCREENSHOT**
- Function creation – **SPACE FOR SCREENSHOT**
- Cursor execution – **SPACE FOR SCREENSHOT**
- Package body – **SPACE FOR SCREENSHOT**
- Output testing – **SPACE FOR SCREENSHOT**

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
