--=========This Query is for Exercise 2 on Page 123=========--
Select 
	InvoiceNumber as 'Number',
	InvoiceTotal as 'Total',
	PaymentTotal + CreditTotal as 'Credits',
	InvoiceTotal - 	(PaymentTotal + CreditTotal) as 'Balance'

	From Invoices