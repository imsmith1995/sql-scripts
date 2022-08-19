--=========This Query is for Exercise 6, CH 2, on Page 123=========--
--=====It should be noted: the question refers to Exercise 3=======--

Select 
	Concat (VendorContactFName, ', ', VendorContactLName) as 'Full Name'
From Vendors
Where VendorContactLName like '[A-C, E]%'
Order By VendorContactLName, VendorContactFName;