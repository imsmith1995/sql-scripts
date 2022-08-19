select 
	CONCAT (VendorContactFName, ' ', VendorContactLName) as Fullname,
	CONCAT (VendorContactLName, ', ', VendorContactFName) as Lastfirst
from Vendors;