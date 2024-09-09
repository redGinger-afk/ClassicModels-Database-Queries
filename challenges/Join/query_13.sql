-- List the names of customers and their corresponding order number where a particular order from that customer has a value greater than $25,000?
select customers.customerName,
	orders.orderNumber,
    payments.amount
	from customers 
	inner join payments on customers.customerNumber = payments.customerNumber
    inner join orders on payments.customerNumber = orders. customerNumber
    where payments.amount > "25000";	
    
