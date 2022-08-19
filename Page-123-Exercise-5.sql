--=========This Query is for Exercise 5, CH 2, on Page 123=========--
--=====It should be noted: the question refers to Exercise 2=======--
Select 
	InvoiceNumber as 'Number',
	InvoiceTotal as 'Total',
	PaymentTotal + CreditTotal as 'Credits',
	InvoiceTotal - 	(PaymentTotal + CreditTotal) as 'Balance'
From Invoices
Where InvoiceTotal >= 500 and InvoiceTotal <= 10000;