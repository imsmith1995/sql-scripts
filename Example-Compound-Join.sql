--==== Compound Join =====--

Select VendorName, InvoiceNumber, TermsDescription
	from Invoices i
	join Vendors v
		on  v.VendorID = i.VendorID
	join Terms t
		on t.TermsID = i.TermsID 