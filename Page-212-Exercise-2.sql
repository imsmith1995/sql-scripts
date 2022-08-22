--==== Exercise 2, CH 6, PG 212 ====--

SELECT InvoiceNumber, InvoiceTotal
    from Invoices

    Where PaymentTotal > (
        Select AVG(PaymentTotal)
            from Invoices
            where InvoiceTotal - (PaymentTotal + CreditTotal) = 0
    );   