--==== Example of a Correlated Subquery; See PG 196 ====--
--==== This script is finding the average of specific Vendors and then throwing
--==== out any entry that is < the AVGInvoiceTotal) of that specific Vendor 

Select VendorID, InvoiceNumber, InvoiceTotal
    from Invoices as Inv_Main
    where InvoiceTotal > (
        select AVG(InvoiceTotal)
            from Invoices as Inv_Sub
            where Inv_Sub.VendorID = Inv_Main.VendorID
    )
    Order By VendorID, InvoiceTotal;