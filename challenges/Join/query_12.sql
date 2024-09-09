-- List the order dates in descending order for orders for the 1940 Ford Pickup Truck.
select o.orderDate,
	products.productName,
	o.orderNumber
	from products 
	inner join orderDetails od on products.productCode =  od.productCode
    inner join orders o on od.orderNumber = o.orderNumber
    where productName like "%1940 Ford Pickup Truck%"
    order by o.orderDate desc;