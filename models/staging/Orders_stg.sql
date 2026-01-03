select
    ORDERID, 
    ORDERDATE, 
    CUSTOMERID, 
    STATUS, 
    UPDATED_AT
from
    {{ ref('orders_src')}}