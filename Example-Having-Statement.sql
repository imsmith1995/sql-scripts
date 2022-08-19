--==== This is an example of HAVING. HAVING must have a previous Group By statement. ====--

Select VendorState, sum(InvoiceTotal) as 'Total', COUNT(*) as 'Count'
	from Invoices i
	join Vendors v
		on v.VendorID = i.VendorID
	--Where would go here
	Group By VendorState
		having sum(InvoiceTotal) > 20000
	Order By VendorState;