SELECT
date_date,
round(sum(operational_margin - ads_cost),0) as ads_margin,
avg_basket,
operational_margin,
quantity,
purchase_cost,
shipping_fee,
logcost,
ship_cost
FROM {{ref("int_campaigns")}}
left JOIN {{ref("finance_days")}}
    USING (date_date)
group by date_date, avg_basket, operational_margin, quantity, purchase_cost, shipping_fee, logcost, ship_cost
order by date_date desc