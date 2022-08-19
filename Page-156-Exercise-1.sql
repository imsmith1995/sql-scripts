--=============Exercise 1, CH 4, PG 156 =============================--
--=============Example of Inner Join function========================--

Select *
	from Vendors v 
	join Invoices i
		on v.VendorID = i.VendorID;