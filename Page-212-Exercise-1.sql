--==== Exercise 1, CH 6, PG 212 ====--

/* The below Select Statement is from EX. 1 and is asked to be switched 
    into a subquery Statement:

SELECT Distinct VendorName
    from Vendors join Invoices
        on Vendors.VendorID = Invoices.VendorID
    order by VendorName;
*/

Select Distinct VendorName
    from Vendors
     WHERE Exists (Select * from Invoices
            where Invoices.VendorID = Vendors.VendorID)
    Order By VendorName;
