-- List products sold by order date.
select o.orderDate,
	products.productName,
	o.orderNumber
	from products 
	inner join orderDetails od on products.productCode =  od.productCode
    inner join orders o on od.orderNumber = o.orderNumber
    order by o.orderDate;