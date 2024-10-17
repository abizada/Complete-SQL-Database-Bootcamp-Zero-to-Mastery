/*
* DB: Employees
* Table: employees
* Question: Get me all the employees above 60, use the appropriate date functions
*/

SELECT * FROM employees;

/*
* DB: Employees
* Table: employees
* Question: How many employees where hired in February?
*/

SELECT * FROM orders
WHERE orderdate >= '2004-01-01' 
  AND orderdate < '2004-02-01';

/*
* DB: Employees
* Table: employees
* Question: How many employees were born in november?
*/

select TO_CHAR(hire_date, 'Month') AS hire_month, * from employees
where TRIM(TO_CHAR(hire_date, 'Month')) = 'November';


/*
* DB: Employees
* Table: employees
* Question: Who is the oldest employee? (Use the analytical function MAX)
*/

SELECT max(age(birth_date)) FROM employees;

/*
* DB: Store
* Table: orders
* Question: How many orders were made in January 2004?
*/

SELECT * FROM orders
WHERE orderdate >= '2004-01-01' 
  AND orderdate < '2004-02-01';
