CREATE OR REPLACE VIEW `ecommerce_profitability_dw.vw_shipping_cost_timeline` AS
SELECT 
  DATE_TRUNC(order_date, MONTH) AS month,
  primary_category,
  SUM(shipping_cost) AS total_shipping_cost,
  SUM(gross_revenue) AS total_gross_revenue,
  SAFE_DIVIDE(SUM(shipping_cost), SUM(gross_revenue)) * 100 AS shipping_as_pct_of_revenue
FROM `ecommerce_profitability_dw.raw_orders`
GROUP BY 1, 2;
