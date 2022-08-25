
-- Creates a Procedure and then switches into Altering it. 
-- Think of this as creating and then editing it.

Create or ALTER Procedure InvoicesForVendor

    @VendorName varchar(30) = '%' --Using the '@' here creates a Parameter, a sort-of variable--

-- Below defines the Procedure
AS
    SELECT VendorName, i.*
        from Vendors v
        join Invoices i
            on v.VendorID = i.VendorID
        where VendorName LIKE @VendorName  --Here is the Parameter
        Order By VendorName;
GO
--EXEC this tells SQL to run the named Procedure and sets the named Parameter (The @)
EXEC InvoicesForVendor @VendorName = 'C%';