--==== Exercise 8, CH 5, PG 181 ====--
Select VendorName, count(distinct li.AccountNo) as '# of Accounts'
	from Vendors v
	join Invoices i
		on V.VendorID = i.VendorID
	join InvoiceLineItems li
		on li.InvoiceID = i.InvoiceID
	
	Group By VendorName
	having Count(Distinct li.AccountNo) > 1
	order by VendorName;
