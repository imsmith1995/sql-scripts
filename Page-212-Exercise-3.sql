--=== Exercise 3, CH 6, PG 212 ===--
/*
This exercise references EX. 2 to begin with. 
The initial SELECT lists InvoiceNumber, InvoiceTotal, and PaymentTotal  from Invoices.
EX.3 wants all Invoices with a Payment Total > the median PaymentTotal FOR all paid Invoices.
SQL doesn't have a MEDIAN func. but 'TOP 50' will work.
using the ALL classifier ensures that no PaymentTotal under the median will be factored in.
*/

SELECT InvoiceNumber, InvoiceTotal, PaymentTotal
    from Invoices
-- below is the subquery. 
    Where PaymentTotal > ALL (
        Select TOP 50 Percent PaymentTotal 
            from Invoices
            order by PaymentTotal
    );   
