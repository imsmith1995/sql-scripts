--===== Exercise 3, CH 5, PG 180 =====--

Select VendorName,
		Count(InvoiceTotal) as InvoiceCount,
		Sum(InvoiceTotal) as InvoiceSum
	From Vendors v
	join Invoices i
	on v.VendorID = i.VendorID

		Group By VendorName
		Order By InvoiceCount Desc;