--=============Exercise 2, CH 4, PG 156 =============================--
--=============Example of more compolex Inner Join Function==========--

Select	 VendorName, 
		InvoiceNumber, 
		InvoiceDate,
		(InvoiceTotal - (PaymentTotal + CreditTotal)) as Balance

	from Vendors v
	join Invoices i
		on v.VendorID = i.VendorID
		Where (InvoiceTotal - (PaymentTotal + CreditTotal)) != 0
			Order By VendorName;