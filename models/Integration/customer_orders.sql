select
    c.customerid,
    c.full_name,
    c.email,
    c.phone,
    c.address,
    c.state,
    c.zipcode,
    count(o.orderid) as no_of_orders_placed,
    max(o.updated_at) as last_order_updated_at
from {{ ref('Customer_stg') }} c
join {{ ref('Orders_stg') }} o
  on c.customerid = o.customerid
group by
    c.customerid,
    c.full_name,
    c.email,
    c.phone,
    c.address,
    c.state,
    c.zipcode