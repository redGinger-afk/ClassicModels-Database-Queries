-- Report those payments greater than \$100,000. Sort the report so the customer who made the highest payment appears first.
select payments.customerNumber, 
	customers.customerName,
	sum(payments.amount) as totalPayment
	from payments
    join customers on payments.customerNumber = customers.customerNumber
	where amount > "100000"
    group by customerNumber
    order by totalPayment desc;
    