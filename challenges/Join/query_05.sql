-- List the amount paid by each customer.
select customers.customerName, 
	payments.customerNumber,
    sum(payments.amount) as totalPaid
    from payments inner join customers 
    on payments.customerNumber = customers.customerNumber
    group by payments.customerNumber;