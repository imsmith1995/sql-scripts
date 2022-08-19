--=========This Query is for Exercise 7, CH 2, on Page 123=========--
Select PaymentDate, (InvoiceTotal - (PaymentTotal + CreditTotal)) as 'Balance'
From Invoices
--===This Where clause should result in no entries. If this is true then PaymentDate has no ===--
--=== invalid values.																		===--
where (PaymentDate is null and (InvoiceTotal - (PaymentTotal + CreditTotal)) <> 0) 
and (PaymentDate is not null and (InvoiceTotal - (PaymentTotal + CreditTotal)) = 0);

--===  No Values were returned, thus PaymentDate only have valid values.                    ===--