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

# README

## Views

This laboratory exercise focuses on the use and management of **database views** in SQL.

---

## Table of Contents

| Section | Folder / File              | Description                                                       |
| ------: | -------------------------- | ----------------------------------------------------------------- |
|       1 | `assign/`                  | Laboratory / Assignment material                                  |
|     1.1 | `assign/laboratory_3.pdf`  | Laboratory instructions (English)                                 |
|     1.2 | `assign/εργαστήριο_3.pdf`  | Laboratory instructions (Greek)                                   |
|       2 | `docs/`                    | Theoretical documentation                                         |
|     2.1 | `docs/Views.pdf`           | Views theory (English)                                            |
|     2.2 | `docs/Όψεις.pdf`           | Views theory (Greek)                                              |
|       3 | `queries/`                 | Visual query examples                                             |
|     3.1 | `queries/query*.png`       | Queries demonstrating SELECT, JOINs, filtering, and view creation |
|     3.2 | `queries/query11a/b.png`   | Split queries for multi-step views                                |
|     3.3 | `queries/query17a/b.png`   | Advanced view queries with conditions                             |
|     3.4 | `queries/query21a/b/c.png` | Complex multi-view queries                                        |
|     3.5 | `queries/query22a/b/c.png` | Hierarchical or nested view queries                               |
|       4 | `src/`                     | SQL scripts and related images                                    |
|     4.1 | `src/personnel.sql`        | SQL script for personnel database demonstrating views             |
|     4.2 | `src/personnel.png`        | ER diagram / model image                                          |
|       5 | `README.md`                | Project documentation                                             |
|       6 | `INSTALL.md`               | Usage instructions                                                |

---

## 1. Database Schema

The exercise uses a database named **personnel** consisting of three primary tables:

### 1.1 DEPT (Departments)

Stores departmental information.

| Column | Description       | Data Type |
| ------ | ----------------- | --------- |
| DEPTNO | Department Number | Numeric   |
| DNAME  | Department Name   | Varchar   |
| LOC    | Location          | Char      |

### 1.2 JOB (Job Positions)

Stores job roles and base salaries.

| Column    | Description            | Data Type |
| --------- | ---------------------- | --------- |
| JOBCODE   | Unique Job Code        | Numeric   |
| JOB_DESCR | Description of the job | Varchar   |
| SAL       | Salary                 | Numeric   |

### 1.3 EMP (Employees)

Stores employee details and relationships to jobs and departments.

| Column | Description                    | Data Type |
| ------ | ------------------------------ | --------- |
| EMPNO  | Employee Number                | Numeric   |
| NAME   | Employee Name                  | Varchar   |
| JOBNO  | Reference to Job Code          | Numeric   |
| DEPTNO | Reference to Department Number | Numeric   |
| COMM   | Commission                     | Numeric   |

---

## 2. Core Activities

The documentation covers 22 specific activities, including:

- **System Setup:** Connecting to MySQL Server 8.0 and initializing the **personnel** database.
- **View Creation:** Establishing views such as `EMP_VIEW` and `EMP_ON_SALES`.
- **Data Integrity & Testing:** Testing how updates to base tables affect views and how updates to views propagate back to base tables.
- **Justification:** Analyzing why certain records appear or do not appear in specific views based on defined criteria.
- **Advanced Views:** Working with `DISTINCT` views and identifying different types of views ("faces").
