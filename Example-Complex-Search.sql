--== This is a more complex search condition ==--

Select InvoiceDate, Count(*) as InvoiceQty, Sum(InvoiceTotal) as InvoiceSum
	From Invoices
	Group By InvoiceDate
	Having INvoiceDate Between '2020-01-01' and '2020-01-31'
		and sum(invoiceTotal) > 20
		and count(*) > 1
	Order By InvoiceDate desc;