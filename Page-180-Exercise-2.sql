--===== Exercise 2, CH 5, PG 180 =====--

select top 10 VendorName, Sum(PaymentTotal) as PaymentSum
from Vendors v
join Invoices i
	on v.VendorID = i.VendorID

	Group by VendorName
	Order by Sum(paymenttotal) desc;