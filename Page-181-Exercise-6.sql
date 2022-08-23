--==== Exercise 6, CH 5, PG 181 ====--
--==== Example of Rollup        ====--
Select AccountNo, sum(InvoiceTotal) InvoiceSum
	From InvoiceLineItems li join Invoices i
		on li.InvoiceID = i.InvoiceID
	group by AccountNo with rollup
	order by InvoiceSum DESC

--====This separates two scripts that achieve the same end result====--

SELECT AccountNo, SUM(InvoiceLineItemAmount) AS LineItemSum
FROM InvoiceLineItems
GROUP BY AccountNo WITH ROLLUP
order by LineItemSum DESC;