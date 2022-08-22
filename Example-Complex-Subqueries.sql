--======= Example of a more complex query using subqueries ======--

Select InvoiceNumber, InvoiceDate, InvoiceTotal,
        InvoiceTotal - PaymentTotal - CreditTotal as BalanceDue
    from Invoices
    where InvoiceTotal - PaymentTotal - CreditTotal > 0
        and InvoiceTotal - PaymentTotal - CreditTotal <
            (Select AVG (InvoiceTotal - PaymentTotal - CreditTotal)
                from Invoices
                where InvoiceTotal - PaymentTotal - CreditTotal > 0)
    Order by InvoiceTotal DESC;
