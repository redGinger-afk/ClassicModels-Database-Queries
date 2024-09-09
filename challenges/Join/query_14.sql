-- Are there any products that appear on all orders?
select productName from products 
	inner join orderDetails on products.productCode = orderDetails.productCode
    inner join orders on orderDetails.orderNumber = orders.orderNumber
    where orders.orderNumber between 10100 and 10425
    group by products.productName;
