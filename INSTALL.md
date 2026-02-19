<p align="center">
  <img src="https://www.especial.gr/wp-content/uploads/2019/03/panepisthmio-dut-attikhs.png" alt="UNIWA" width="150"/>
</p>

<p align="center">
  <strong>UNIVERSITY OF WEST ATTICA</strong><br>
  SCHOOL OF ENGINEERING<br>
  DEPARTMENT OF COMPUTER ENGINEERING AND INFORMATICS
</p>

<p align="center">
  <a href="https://www.uniwa.gr" target="_blank">University of West Attica</a> ·
  <a href="https://ice.uniwa.gr" target="_blank">Department of Computer Engineering and Informatics</a>
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

<hr>

<p align="center">
  <strong>Supervision</strong>
</p>

<p align="center">
  Supervisor: Periklis Andritsos, Associate Professor
</p>
<p align="center">
  <a href="https://ice.uniwa.gr/en/emd_person/periklis-andritsos/" target="_blank">UNIWA Profile</a> ·
  <a href="https://www.linkedin.com/in/periklisandritsos/" target="_blank">LinkedIn</a>
</p>

<p align="center">
  Co-supervisor: Rania Garofalaki, Laboratory Teaching Staff<br>
</p>

<p align="center">
  <a href="https://ice.uniwa.gr/en/emd_person/zacharenia-garofalaki/" target="_blank">UNIWA Profile</a> ·
  <a href="https://www.linkedin.com/in/rania-garofalaki-4761b071/" target="_blank">LinkedIn</a>
</p>

</hr>

---

<p align="center">
  Athens, January 2024
</p>

---

<p align="center">
  <img src="https://www.mysqltutorial.org/wp-content/uploads/2019/08/MySQL-View.png" width="250"/>
</p>

---

# INSTALL

## Views

This repository contains a **personnel database project with views** developed for the **Databases II** course at the **University of West Attica (UNIWA)**.  
It demonstrates **table creation, data types, constraints, data manipulation, and advanced use of SQL views** on a sample personnel database.

---

## 1. Prerequisites

Before using this project, ensure you have the following installed:

### 1.1 Database Management System (DBMS)

- **MySQL 8.0** (recommended)
- Compatible alternatives:
  - MariaDB
  - PostgreSQL _(minor syntax adjustments may be required)_

### 1.2 SQL Client / Interface

A tool to execute `.sql` scripts and manage databases:

- **MySQL Workbench** (recommended)
- phpMyAdmin
- DBeaver
- Command-line MySQL client

### 1.3 Knowledge Requirements

- SQL basics: `CREATE DATABASE`, `CREATE TABLE`, `INSERT`, `SELECT`, `UPDATE`
- Understanding of **primary keys, foreign keys, default values, and auto-increment**
- Familiarity with **views**: creating, querying, and updating
- Understanding of joins, filters, and aggregation

---

## 2. Installation

### 2.1 Clone the Repository

Open a terminal or command prompt and run:

```bash
git clone https://github.com/Data-Bases-2/Views.git
```

### 2.2 Alternative (Without Git)

- Open the repository URL in your browser
- Click Code → Download ZIP
- Extract the ZIP file to a local directory

### 2.3 Open SQL Client

- Launch your preferred SQL client (e.g., MySQL Workbench)
- Connect to your local or remote MySQL server

### 2.4 Create the Database

- Execute the following SQL command if the database does not exist:

```sql
CREATE DATABASE IF NOT EXISTS personnel;
USE personnel;
```

### 2.5 Create Tables

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

### 2.6 Create Views

The script also includes multiple views such as:

- `EMP_VIEW`
- `EMP_ON_SALES`
- Advanced multi-step or nested views

Execute these after the tables have been created to enable exercises and queries involving views.

### 2.7 Verify Setup

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

## 3. Open the Documentation

1. Navigate to the `docs/` directory
2. Open the report corresponding to your preferred language:
   - English: `Views.pdf`
   - Greek: `Όψεις.pdf`
