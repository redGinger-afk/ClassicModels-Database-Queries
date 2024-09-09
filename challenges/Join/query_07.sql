-- Who are the employees in Boston?
select concat(employees.firstName, " ", employees.lastName) as employeeName,
	offices.phone, 
    offices.city, 
    offices.officeCode 
    from offices 
	join employees on offices.officeCode = employees.officeCode
    where offices.city = "Boston";