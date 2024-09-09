-- List the value of 'On Hold' orders.
select * from orders 
	where status like "%On Hold%";