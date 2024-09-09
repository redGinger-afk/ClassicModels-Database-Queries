-- Report total payments for Atelier graphique.
select c.customerName, sum(amount) from payments
	inner join customers c on payments.customerNumber = c.customerNumber
    where c.customerName = "Atelier graphique";