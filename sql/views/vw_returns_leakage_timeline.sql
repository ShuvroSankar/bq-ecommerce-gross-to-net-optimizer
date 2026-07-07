CREATE OR REPLACE VIEW `ecommerce_profitability_dw.vw_returns_leakage_timeline` AS
SELECT 
  DATE_TRUNC(order_date, MONTH) AS month,
  primary_category,
  channel,
  COUNT(order_id) AS total_orders,
  COUNTIF(returned = True) AS total_returned_units,
  SUM(refund_amount) AS total_refunds_issued
FROM `ecommerce_profitability_dw.raw_orders`
GROUP BY 1, 2, 3;
