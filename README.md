# SQL Challenge - Employee Database: A Mystery in Two Parts


## Background

This project involved designing tables to hold employee data from six CSV files, importing the CSVs into a SQL database, and addressing questions about the data.

## Data Modeling

The CSVs were inspected and a diagram is included reflecting the relationship mapping (see "SQL ERD.png")
![SQL ERD.png](SQL ERD.png)

### Data Engineering

* A table schema was created for each of the six CSV files, including specification of data types, primary keys, foreign keys, and other constraints (see "SQL_tables.sql").

  * Primary keys were created for each table
  * Given that the dept_emp and dept_mgr tables did not have unique columns, a composite key was created for each of these tables to uniquely identify each row.

* CSV files were imported into the associated SQL tables.  
    

### Data Analysis

From the complete database, views and tables were created to reflect the following (see "SQL_query.sql"):

1. The following details of each employee: employee number, last name, first name, sex, and salary.

2. The first name, last name, and hire date for employees who were hired in 1986.

3. The manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

4. The department of each employee with the following information: employee number, last name, first name, and department name.

5. The first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

6. All employees in the Sales department, including their employee number, last name, first name, and department name.

7. All employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. The frequency count of employee last names (i.e., how many employees share each last name) in descending order.

## Additional Analysis

1. The SQL database was imported into Pandas and the below were generated (see "sql_challenge_alchemy.ipynb"):

    * A histogram to visualize the most common salary ranges for employees
    * A bar chart of the average salary by title
    * Information for employee 499942

## Conclusion
From this analysis, it was determined that the data appears to be fictitious.  In this fictitious dataset, an overwhelming majority of the employees made between $40,000-$50,000 per year.
