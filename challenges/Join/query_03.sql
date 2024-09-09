-- Report the total payments by date.
select year(paymentDate) as `Year`,
	month(paymentDate) as `Month`,
	sum(amount)
    from payments
    group by `Year`, `Month`
    order by `Year`, `Month`;