--======Example of Subquery======--

Select InvoiceNumber, InvoiceDate, InvoiceTotal
    from Invoices
    Where InvoiceTotal > (
        Select avg(invoiceTotal)
            from Invoices
    )
    order by InvoiceTotal;