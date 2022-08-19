--====This is an example of UNION ====--

Select 'A' Category, *
	from Invoices
	where InvoiceTotal >= 10000
	UNION

Select 'B' Category, *
	from Invoices
	where InvoiceTotal < 10000 and InvoiceTotal >= 100
	UNION

Select 'C' Category, *
	from Invoices
	where InvoiceTotal < 100;
