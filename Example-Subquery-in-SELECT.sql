--=== Example of coding a subquery in the SELECT clause ===--

Select Distinct VendorName,
    (Select MAX(InvoiceDate) from Invoices
        Where Invoices.VendorID = Vendors.VendorID) as LatestInv
    from Vendors
    order by LatestInv desc;