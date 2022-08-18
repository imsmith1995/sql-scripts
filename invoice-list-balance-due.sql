select
	InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal,
	CreditTotal,
	InvoiceTotal - PaymentTotal - CreditTotal as BalanceDue
From Invoices
Where InvoiceTotal - PaymentTotal - CreditTotal > 0
Order By InvoiceDate;