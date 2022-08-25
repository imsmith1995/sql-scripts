--=== Creating Procedure
--=== This is adding a product entry to the Products table
--=== returns an error code if entry is not valid


Create or ALTER PROCEDURE AddProduct
    @PartNbr varchar(30) = NULL,
    @Name varchar(30) = NULL,
    @Price DECIMAL(9,2) = 10,
    @VendorCode varchar(30) = NULL
as 
    IF @PartNbr is NULL
        RETURN -1;
    IF @Name is NULL
        return -2;
    IF @VendorCode is NULL
        return -3;

    DECLARE @VendorId int;
    SELECT @VendorId = Id
        from Vendors
        WHERE Code = @VendorCode;

    If @VendorId is NULL
        return -4;

INSERT Products (PartNbr, Name, Price, VendorId) VALUES
                (@PartNbr, @Name, @Price, @VendorId);
RETURN 0;

GO
DECLARE @rc int;
EXEC @rc = AddProduct @PartNbr='Fire', @Name='Fire TV Cube', @Price=175, @VendorCode='AMAZ';
Print 'Return code is ' + STR(@rc);

