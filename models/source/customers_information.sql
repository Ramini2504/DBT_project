-- This is source file where the customer information is reterived 
select * from {{source('landing', 'customers')}}