CREATE OR REPLACE VIEW `ecommerce_profitability_dw.vw_discount_impact_timeline` AS
SELECT 
  DATE_TRUNC(order_date, MONTH) AS month,
  channel,
  AVG(discount_amount) AS avg_discount_given,
  SAFE_DIVIDE(SUM(discount_amount), SUM(gross_revenue)) * 100 AS discount_to_revenue_pct,
  SAFE_DIVIDE(SUM(profit), SUM(gross_revenue)) * 100 AS net_margin_pct
FROM `ecommerce_profitability_dw.raw_orders`
GROUP BY 1, 2;
