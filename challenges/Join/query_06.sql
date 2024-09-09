-- How many orders have been placed by Herkku Gifts?
select customers.customerName,
	count(customers.customerNumber) as totalOrder
    from customers
	join orders on customers.customerNumber = orders.customerNumber
    where customers.customerName = "Herkku Gifts"
    group by customers.customerNumber;