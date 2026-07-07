CREATE OR REPLACE VIEW `ecommerce_profitability_dw.vw_daily_sales_pulse` AS
SELECT 
  EXTRACT(DAYOFWEEK FROM order_date) AS day_of_week,
  channel,
  COUNT(order_id) AS total_orders,
  SUM(gross_revenue) AS gross_revenue,
  SUM(profit) AS total_net_profit
FROM `ecommerce_profitability_dw.raw_orders`
GROUP BY 1, 2;
