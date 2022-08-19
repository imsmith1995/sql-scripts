--===== Exercise 1, CH 5, PG 180 =====--

Select VendorID, Sum(PaymentTotal) as PaymentSum

	from Invoices

		Group By VendorID