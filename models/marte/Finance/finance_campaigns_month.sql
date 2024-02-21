SELECT
DATE_TRUNC(date_date, MONTH) AS DATE_MONTH,
ads_margin,
avg_basket,
operational_margin,
quantity,
purchase_cost,
shipping_fee,
logcost,
ship_cost
FROM {{ref("finance_campaigns_day")}}