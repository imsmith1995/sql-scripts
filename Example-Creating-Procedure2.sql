--==== Example of creating a Procedure
--==== This procedure is searching for invoices between certain dates defined by
--==== the Parameters '@MinDate' and '@MinDate'
--==== The Parameters get define in the EXEC function

Create or Alter PROCEDURE InvoiceByDateRange 
    @MinDate varchar(30) = NULL,
    @MaxDate varchar(30) = NULL 
AS 
    DECLARE @MinInvoiceDate varchar(20) = '01/01/1900';
    IF @MinDate is null 
        Set @MinDate = @MinInvoiceDate;
    IF @MaxDate is NULL 
        set @MaxDate = GETDATE();
    Select *
        From Invoices
        Where InvoiceDate between @MinDate and @MaxDate
        Order By InvoiceDate;
GO

EXEC InvoiceByDateRange @MaxDate='6/30/2020', @MinDate='1/1/2020';

--EXEC <ProcedureName> @Parameter1 = 'MinDate', @Parameter2 = 'MaxDate'