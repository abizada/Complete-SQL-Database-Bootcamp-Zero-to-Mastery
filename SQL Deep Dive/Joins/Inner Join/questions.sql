
/*
* DB: Store
* Table: orders
* Question: Get all orders from customers who live in Ohio (OH), New York (NY) or Oregon (OR) state
* ordered by orderid
*/
SELECT o.orderid, o.customerid, c.state 
from orders as o
inner join customers as c on c.customerid = o.customerid
where c.state in ('OH','NY','OR')
order by orderid;


/*
* DB: Store
* Table: products
* Question: Show me the inventory for each product
*/
prod_id from products,prod_id and quan_in_stock in inventory
select p.prod_id, i.quan_in_stock from products as p
inner join inventory as i on i.prod_id = p.prod_id;

/*
* DB: Employees
* Table: employees
* Question: Show me for each employee which department they work in
*/

select e.emp_no, de.dept_no, d.dept_name 
from employees as e
inner join dept_emp as de on de.emp_no = e.emp_no
inner join departments as d on d.dept_no = de.dept_no
order by de.dept_no asc, e.emp_no asc 


