SELECT
date_date,
COUNT (orders_id) as n_trans,
round(sum(revenue),0) as revenue,
round(avg(revenue),1) as avg_basket,
round(sum(margin),0) as margin,
round(sum(operational_margin),0) as operational_margin,
round(sum(quantity),0) as quantity,
round(sum(purchase_cost),0) as purchase_cost,
round(sum(shipping_fee),0) as shipping_fee,
round(sum(logcost),0) as logcost,
round(sum(ship_cost),0) as ship_cost
FROM {{ref("int_orders_operational")}}
group by date_date
order by date_date desc