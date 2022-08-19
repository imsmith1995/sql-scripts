Select SUM(InvoiceTotal) as Total,
		Count(*) as Count,
		AVG(InvoiceTotal) as Average,
		MIN(InvoiceTotal) as Minimum,
		MAX(InvoiceTotal) as Maximum
from Invoices;
