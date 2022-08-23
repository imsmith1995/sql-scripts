--==== Exercise 8, CH 5, PG 156 ====--

Select VendorName, VendorState
	From Vendors
	Where VendorState = 'CA'

Union
Select VendorName, 'Outside CA'
	from Vendors
	Where VendorState <> 'CA'

Order by VendorName;