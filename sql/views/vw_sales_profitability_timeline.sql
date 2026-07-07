CREATE OR REPLACE VIEW `ecommerce_profitability_dw.vw_sales_profitability_timeline` AS
SELECT 
  DATE_TRUNC(order_date, MONTH) AS month,
  channel,
  COUNT(order_id) AS total_orders,
  SUM(gross_revenue) AS gross_revenue,
  SUM(discount_amount) AS total_discounts,
  SUM(platform_fee) AS total_platform_fees,
  SUM(profit) AS total_net_profit
FROM `ecommerce_profitability_dw.raw_orders`
GROUP BY 1, 2;
