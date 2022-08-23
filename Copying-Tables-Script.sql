--==== This Script creates a copy of a table and populates another New Table.  You must already have another Table set up
--==== ex. Vendors ==> VendorsCopy


Set IDENTITY_INSERT VendorsCopy on;

Insert into VendorsCopy (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, 
            VendorZipCode, VendorPhone, VendorContactLName, VendorContactFName, DefaultTermsID, DefaultAccountNo)
            
            SELECT VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, 
                    VendorZipCode, VendorPhone, VendorContactLName, VendorContactFName, DefaultTermsID, DefaultAccountNo
            From Vendors;

Set IDENTITY_INSERT VendorsCopy off;



