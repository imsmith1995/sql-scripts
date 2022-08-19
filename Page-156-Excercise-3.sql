--=============Exercise 3, CH 4, PG 156 =============================--
--=============Example of more compolex Join Function================--

Select VendorName,
		DefaultAccountNo,
		AccountDescription
		
	From Vendors v
	join GLAccounts g
		on v.DefaultAccountNo = g.AccountNo
	Order By AccountDescription, VendorName;