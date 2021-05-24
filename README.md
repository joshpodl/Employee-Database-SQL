# Exploring an Employee Database with SQL

![sql.png](sql.png)

## Background

For this exploration, I used six CSV files containing employee data of a coporation from the 1980s and 1990s. I conducted data modeling, data engineering, and data analysis as I designed tables to hold data in the CSVs, imported the CSVs into a SQL database, and answered questions about the data.

#### Data Modeling

I initially inspected the CSVs and sketched out an ERD of the tables.

#### Data Engineering

I created a table schema for each of the six CSV files. Data types, primary keys, foreign keys, and other constraints are specified.

#### Data Analysis

The following SQL queries were conducted based on these descriptors:

1. List the following details of each employee: employee number, last name, first name, sex, and salary.

2. List first name, last name, and hire date for employees who were hired in 1986.

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

### Copyright

Trilogy Education Services © 2019. All Rights Reserved.
