--===== Exercise 5, CH 5, PG 180 =========--
--===== Note: EX. 5 references EX. 4 =====--

Select g.AccountDescription, Count(*) as LineItemCount, sum(InvoiceLineItemAmount) as LineItemSum
	from GLAccounts g join InvoiceLineItems li
		on g.AccountNo = li.AccountNo
	join Invoices i
		on li.InvoiceID = i.InvoiceID
	
	Where InvoiceDate between '2019-10-01' and '2019-12-31'
	group by g.AccountDescription
	having Count(*) > 1
	order by LineItemCount Desc;