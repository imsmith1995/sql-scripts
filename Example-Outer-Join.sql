--====Example of Outer Join ====---

Select *
	From Terms t
	left join Invoices i
		on i.TermsID = t.TermsID