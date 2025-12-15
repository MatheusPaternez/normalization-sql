# Database Normalization Project

## Assignment Overview

This project demonstrates **database normalization**, a technique used to organize a database structure to minimize redundancy and ensure logical data dependencies. The assignment takes a denormalized employee table and breaks it down into properly normalized relations following **Third Normal Form (3NF)** principles.

The denormalized table contained redundant data (e.g., department location repeated for each employee), which is eliminated by separating the data into two related tables: `Employee` and `Department`.

## Importing the SQL Files into MySQL

**Recommended: Use `employee.sql` for quick import (contains complete database)**

### Quick Import using MySQL Command Line

1. Open your terminal or command prompt
2. Import the complete database:
   ```bash
   mysql -u root -p < employee.sql
   ```

### Quick Import using phpMyAdmin

1. Open phpMyAdmin in your browser
2. Click on "Import" tab
3. Select `employee.sql` and click "Import"
4. Done! The database and all tables will be created automatically

### Quick Import using MySQL Workbench

1. Open MySQL Workbench
2. Connect to your MySQL server
3. Go to **File → Run SQL Script**
4. Select `employee.sql` and execute

### Alternative: Import Schema and Data Separately

If you prefer to import the schema and data separately:

**MySQL Command Line:**
```bash
mysql -u root -p employee < schema.sql
mysql -u root -p employee < data.sql
```

**phpMyAdmin:**
1. Create a new database called `employee`
2. Select the database
3. Go to "Import" and select `schema.sql`, then click "Import"
4. Repeat with `data.sql`

**MySQL Workbench:**
1. Go to **File → Run SQL Script** and select `schema.sql`
2. Repeat for `data.sql`

## File Guide

| File | Purpose |
|------|---------|
| **schema.sql** | Contains the CREATE TABLE statements to set up the database structure with proper foreign key relationships |
| **data.sql** | Contains INSERT statements to populate both the `Department` and `Employee` tables with sample data |
| **normalization-process.md** | Detailed explanation of the normalization steps, functional dependencies, and the process of breaking down the denormalized table into 3NF |
| **queries.sql** | A collection of SQL SELECT statements demonstrating various queries including aggregations, JOINs, filtering, and grouping operations |
| **employee.sql** | Complete phpMyAdmin dump file containing both schema and data (alternative to importing schema.sql and data.sql separately) |

## Quick Start

To get this database running quickly:
- Import `employee.sql` (single file with everything included)

To understand the project:
1. Review `normalization-process.md` to understand the normalization theory
2. Run queries from `queries.sql` to explore the data
