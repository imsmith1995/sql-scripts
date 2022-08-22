--=== Example of Common Table Expression (CTE) ===--

WITH CAVendors as (
    SELECT *
        from Vendors
        where VendorState in ('CA', 'OH')
)
SELECT *
    from Invoices
    join CAVendors
        on Invoices.VendorID = CAVendors.VendorID;