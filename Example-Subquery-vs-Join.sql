--======Example of Subquery======--

Select InvoiceNumber, InvoiceDate, InvoiceTotal
    from Invoices
    Where VendorID in (
        Select VendorID
            from Vendors
            where VendorState = 'CA'
    )
    order by InvoiceDate;

    -- below is an example of doing the same function but with a JOIN --

Select InvoiceNumber, InvoiceDate, InvoiceTotal
    from Invoices
    join Vendors
        on invoices.VendorID = Vendors.VendorID
    where vendors.VendorState = 'CA'
    order by InvoiceDate