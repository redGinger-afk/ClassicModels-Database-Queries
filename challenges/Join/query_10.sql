-- Report the number of orders 'On Hold' for each customer.
select * from orders 
	join customers 
    on orders.customerNumber = customers.customerNumber
    where orders.status like "%On Hold%";