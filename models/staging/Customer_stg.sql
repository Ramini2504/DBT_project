-- This is staging where we do the basice of staging for the customers table    
select 
    CUSTOMERID, 
    concat(FIRSTNAME,' ', LASTNAME) as full_name,
    EMAIL, 
    PHONE, 
    ADDRESS, 
    CITY, 
    STATE, 
    ZIPCODE, 
    UPDATED_AT
from
    {{ref('customers_information')}}