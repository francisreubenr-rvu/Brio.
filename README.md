# DevPath — Project-Driven Programming Learning Platform

This repository contains the Database Management System (DBMS) project for the course CS1211 at RV University.

## Project Structure

- `01_DDL.sql`: Schema definition (13 tables).
- `02_DML.sql`: Seed data for testing.
- `03_QUERIES.sql`: 15 complex SQL queries.
- `04_VIEWS_TRIGGERS_TRANSACTIONS.sql`: Advanced database logic.
- `build_ppt.js`: Presentation generator.
- `build_report.js`: Report generator.
- `index.html`: Project landing page.

## Getting Started

1. **Database Setup:**
   ```bash
   mysql -u root < 01_DDL.sql
   mysql -u root < 02_DML.sql
   ```

2. **Generate Artifacts:**
   ```bash
   npm install
   node build_ppt.js
   node build_report.js
   ```

## Team
- Darshan Jain
- Francis Reuben R
- Harshith B A
