--=============Exercise 7, CH 4, PG 156 =============================--
--=============Example of Outer Join Function ====================--
/*
White a SELECT statement that returns two columns from the GLAccounts
table: AccountNO and AccountDescription. The result set should have one row
for each account number that has never been used. Sort the final result set by AccountNo,
*/

Select g.AccountNo, AccountDescription --,l*   this was originally in the code in order to identify all nulls within InvoiceID

		From GLAccounts g
		left join InvoiceLineItems l
			on g.AccountNo = l.AccountNo
		Where l.InvoiceID is null;

/*
I use an Outer Join becuase we were looking for account numbers not in use.
The Invoice ID will have a null value in for any GLAccount number not currently in use.
*/