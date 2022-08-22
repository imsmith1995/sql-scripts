--===== Example of EXISTS Operator. See PG. 198 =====--

SELECT VendorID, VendorName, VendorState
    from Vendors
    where not exists 
        (select *
        from Invoices
        where Invoices.VendorID = Vendors.VendorID);