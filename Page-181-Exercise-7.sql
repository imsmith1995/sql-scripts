--===== Exercise 7, CH 5, PG 180 =====--

Select VendorName,
		AccountDescription,
		Count(*) as LineItemCount,
		Sum(InvoiceLineItemAmount) LineItemSum

	From Vendors v
	join Invoices i
		on v.VendorID = i.VendorID
	join InvoiceLineItems l
		on i.InvoiceID = l.InvoiceID
	join GLAccounts g
		on l.AccountNo = g.AccountNo

	group by VendorName, AccountDescription
	order by VendorName, AccountDescription;


