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
**SPACE FOR SCREENSHOT** – *(Insert screenshot of your Phase I PowerPoint presentation showing the problem, entities, goals, and benefits.)*

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
**SPACE FOR SCREENSHOT** – *(Insert screenshot of your swimlane BPMN diagram showing roles and flow of course registration and grading.)*

### 📄 Explanation
The process begins with administrators creating course schedules. Students log in, view courses, and register. The system validates inputs and prevents conflicts. Professors then enter grades, which students can view. All activities are securely handled and logged by the system.

---

## ✅ Phase VI – Database Interaction and Transactions

### 🛠️ Database Operations
Performed using:
- DDL: `CREATE`, `ALTER`
- DML: `INSERT`, `UPDATE`, `DELETE`

### 🧩 Procedures & Functions
- `proc_register_student`: Registers a student for a course
- `fn_get_student_gpa`: Returns the average GPA of a student

### 📦 Package
- `student_pkg`: Encapsulates procedures and functions related to students

### 🔁 Cursor Example
- Loops through enrollments to display student performance

### 🧪 Testing
All components were tested in Oracle DB using `DBMS_OUTPUT`.

### 📸 Screenshots
**SPACE FOR SCREENSHOT** – *(Insert screenshot of your SQL Developer/Oracle environment showing the successful execution of procedures, functions, and output results.)*

---

## 🔜 Next: Phase VII – Advanced Database Programming & Auditing
(Triggers, Auditing, Access Restrictions)

Let me know when you're ready to proceed with the next phase.
