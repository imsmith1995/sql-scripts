--===== Exercise 4, CH 5, PG 180 =====--

Select AccountDescription,
		Count(*) as LineItemCount,
		Sum(InvoiceLineItemAmount) as LineItemSum
	from GLAccounts g
	join InvoiceLineItems i
		on g.AccountNo = i.AccountNo

	Group By AccountDescription
	Having Count(*) > 1

	Order By LineItemCount DESC;
