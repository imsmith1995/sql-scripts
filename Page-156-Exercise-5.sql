--=============Exercise 5, CH 4, PG 156 =============================--
--=============Example of Compound Join Function ====================--

Select VendorName as 'Vendor',
		InvoiceDate as 'Date',
		InvoiceNumber as 'Number',
		InvoiceSequence as '#',
		InvoiceLineItemAMount as 'LineItem'

		from Vendors v
		join Invoices i
			on v.VendorID = i.VendorID
		join InvoiceLineItems li
			on i.VendorID = li.InvoiceID

		Order By VendorName, InvoiceDate, InvoiceNumber, InvoiceSequence;
			