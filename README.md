<p align="center">
  <img src="https://www.especial.gr/wp-content/uploads/2019/03/panepisthmio-dut-attikhs.png" alt="UNIWA" width="150"/>
</p>

<p align="center">
  <strong>UNIVERSITY OF WEST ATTICA</strong><br>
  SCHOOL OF ENGINEERING<br>
  DEPARTMENT OF COMPUTER ENGINEERING AND INFORMATICS
</p>

---

<p align="center">
  <strong>Databases II</strong>
</p>

<h1 align="center">
  Views
</h1>

<p align="center">
  <strong>Vasileios Evangelos Athanasiou</strong><br>
  Student ID: 19390005
</p>

<p align="center">
  <a href="https://github.com/Ath21" target="_blank">GitHub</a> ·
  <a href="https://www.linkedin.com/in/vasilis-athanasiou-7036b53a4/" target="_blank">LinkedIn</a>
</p>

<p align="center">
  Supervisor: Rania Garofalaki, Laboratory Teaching Staff<br>
</p>

<p align="center">
  <a href="https://ice.uniwa.gr/en/emd_person/zacharenia-garofalaki/" target="_blank">UNIWA Profile</a> ·
  <a href="https://www.linkedin.com/in/rania-garofalaki-4761b071/" target="_blank">LinkedIn</a>
</p>

<p align="center">
  Athens, January 2024
</p>

---

# Project Overview

This laboratory exercise focuses on the use and management of **database views** in SQL.


---

## Table of Contents


| Section | Folder / File | Description |
|------:|---------------|-------------|
| 1 | `assign/` | Laboratory / Assignment material |
| 1.1 | `assign/laboratory_3.pdf` | Laboratory instructions (English) |
| 1.2 | `assign/εργαστήριο_3.pdf` | Laboratory instructions (Greek) |
| 2 | `docs/` | Theoretical documentation |
| 2.1 | `docs/Views.pdf` | Views theory (English) |
| 2.2 | `docs/Όψεις.pdf` | Views theory (Greek) |
| 3 | `queries/` | Visual query examples |
| 3.1 | `queries/query*.png` | Queries demonstrating SELECT, JOINs, filtering, and view creation |
| 3.2 | `queries/query11a/b.png` | Split queries for multi-step views |
| 3.3 | `queries/query17a/b.png` | Advanced view queries with conditions |
| 3.4 | `queries/query21a/b/c.png` | Complex multi-view queries |
| 3.5 | `queries/query22a/b/c.png` | Hierarchical or nested view queries |
| 4 | `src/` | SQL scripts and related images |
| 4.1 | `src/personnel.sql` | SQL script for personnel database demonstrating views |
| 4.2 | `src/personnel.png` | ER diagram / model image |
| 5 | `README.md` | Repository overview and instructions |

---

## Database Schema

The exercise uses a database named **personnel** consisting of three primary tables:

### 1. DEPT (Departments)

Stores departmental information.

| Column | Description | Data Type |
|--------|-------------|-----------|
| DEPTNO | Department Number | Numeric |
| DNAME  | Department Name   | Varchar |
| LOC    | Location          | Char |

### 2. JOB (Job Positions)

Stores job roles and base salaries.

| Column    | Description | Data Type |
|-----------|-------------|-----------|
| JOBCODE   | Unique Job Code | Numeric |
| JOB_DESCR | Description of the job | Varchar |
| SAL       | Salary | Numeric |

### 3. EMP (Employees)

Stores employee details and relationships to jobs and departments.

| Column  | Description | Data Type |
|---------|-------------|-----------|
| EMPNO   | Employee Number | Numeric |
| NAME    | Employee Name   | Varchar |
| JOBNO   | Reference to Job Code | Numeric |
| DEPTNO  | Reference to Department Number | Numeric |
| COMM    | Commission | Numeric |

---

## Core Activities

The documentation covers 22 specific activities, including:

- **System Setup:** Connecting to MySQL Server 8.0 and initializing the **personnel** database.  
- **View Creation:** Establishing views such as `EMP_VIEW` and `EMP_ON_SALES`.  
- **Data Integrity & Testing:** Testing how updates to base tables affect views and how updates to views propagate back to base tables.  
- **Justification:** Analyzing why certain records appear or do not appear in specific views based on defined criteria.  
- **Advanced Views:** Working with `DISTINCT` views and identifying different types of views ("faces").

---

# Installation & Setup Guide

This repository contains a **personnel database project with views** developed for the **Databases II** course at the **University of West Attica (UNIWA)**.  
It demonstrates **table creation, data types, constraints, data manipulation, and advanced use of SQL views** on a sample personnel database.

---

## Prerequisites

Before using this project, ensure you have the following installed:

### 1. Database Management System (DBMS)
- **MySQL 8.0** (recommended)
- Compatible alternatives:
  - MariaDB
  - PostgreSQL *(minor syntax adjustments may be required)*

### 2. SQL Client / Interface
A tool to execute `.sql` scripts and manage databases:
- **MySQL Workbench** (recommended)
- phpMyAdmin
- DBeaver
- Command-line MySQL client

### 3. Knowledge Requirements
- SQL basics: `CREATE DATABASE`, `CREATE TABLE`, `INSERT`, `SELECT`, `UPDATE`
- Understanding of **primary keys, foreign keys, default values, and auto-increment**
- Familiarity with **views**: creating, querying, and updating
- Understanding of joins, filters, and aggregation

---

## Installation

### 1. Clone the Repository

Open a terminal or command prompt and run:

```bash
git clone https://github.com/Data-Bases-2/Views.git
```

#### Alternative (Without Git)

- Open the repository URL in your browser
- Click Code → Download ZIP
- Extract the ZIP file to a local directory

### 2. Open SQL Client
- Launch your preferred SQL client (e.g., MySQL Workbench)
- Connect to your local or remote MySQL server

### 3. Create the Database
- Execute the following SQL command if the database does not exist:
```sql
CREATE DATABASE IF NOT EXISTS personnel;
USE personnel;
```

### 4. Create Tables
Run the provided SQL script `src/personnel.sql`. This script includes:
- `DEPT` Table
- `JOB` Table
- `EMP` Table
- Column data types, primary keys, foreign keys, default values, and auto-increment where required
Example:
```sql
CREATE TABLE DEPT (
    DEPTNO NUMERIC(2) PRIMARY KEY,
    DNAME VARCHAR(24),
    LOC CHAR(23)
);

CREATE TABLE JOB (
    JOBCODE NUMERIC(3) PRIMARY KEY,
    JOB_DESCR VARCHAR(24),
    SAL NUMERIC(10,2)
);

CREATE TABLE EMP (
    EMPNO NUMERIC(4) PRIMARY KEY,
    NAME VARCHAR(255),
    JOBNO NUMERIC(3),
    DEPTNO NUMERIC(2),
    COMM NUMERIC(10,2),
    FOREIGN KEY (DEPTNO) REFERENCES DEPT(DEPTNO),
    FOREIGN KEY (JOBNO) REFERENCES JOB(JOBCODE)
);
```
> Tip: Execute the full `personnel.sql` file in one step to ensure all constraints and sample data are applied.

### 5. Create Views
The script also includes multiple views such as:
- `EMP_VIEW`
- `EMP_ON_SALES`
- Advanced multi-step or nested views

Execute these after the tables have been created to enable exercises and queries involving views.

### 6. Verify Setup
Check tables and views:
```sql
SHOW TABLES;
SHOW FULL TABLES WHERE TABLE_TYPE = 'VIEW';

SELECT * FROM DEPT;
SELECT * FROM JOB;
SELECT * FROM EMP;

SELECT * FROM EMP_VIEW;
SELECT * FROM EMP_ON_SALES;
```

---

## Open the Documentation
1. Navigate to the `docs/` directory
2. Open the report corresponding to your preferred language:
    - English: `Views.pdf`
    - Greek: `Όψεις.pdf`