--=========This Query is for Exercise 3, CH 2, on Page 123=========--

Select 
	Concat (VendorContactFName, ', ', VendorContactLName) as 'Full Name'
From Vendors
Order By VendorContactLName, VendorContactFName;