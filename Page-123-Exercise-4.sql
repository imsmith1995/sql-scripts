--=========This Query is for Exercise 4, CH 2, on Page 123=========--

Select 
InvoiceTotal,
InvoiceTotal * 0.1 as '10%',
(InvoiceTotal * 0.1) + InvoiceTotal as 'Plus 10%'
From Invoices
Where InvoiceTotal > 1000
Order By InvoiceTotal desc;