select
    products_id, 
    date_date, 
    orders_id,
    revenue, 
    quantity, 
    ROUND(quantity*CAST(purchase_price AS FLOAT64),2) AS purchase_cost,
    revenue - ROUND(quantity*CAST(purchase_price AS FLOAT64),2) AS margin
from {{ ref("stg_raw__sales") }}
    LEFT JOIN {{ref("stg_raw__product")}}
    USING (products_id)