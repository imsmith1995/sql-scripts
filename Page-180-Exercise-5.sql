--===== Exercise 5, CH 5, PG 180 =========--
--===== Note: EX. 5 references EX. 4 =====--
Select AccountDescription, 
Count(*) as LineItemCount, 
sum(InvoiceLineItemAmount) as LineItemSum

	
	from GLAccounts g 
	join InvoiceLineItems l
		on g.AccountNo = l.AccountNo
	join Invoices i
		on i.InvoiceID = l.InvoiceID
Where InvoiceDate between '2019-10-01' and '2019-12-31'
		
		group by AccountDescription
		having Count(*) > 1

	Order by LineItemCount DESC
