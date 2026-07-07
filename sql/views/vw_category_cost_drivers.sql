CREATE OR REPLACE VIEW `ecommerce_profitability_dw.vw_category_cost_drivers` AS
SELECT 
  primary_category,
  COUNT(order_id) AS total_units_sold,
  SUM(gross_revenue) AS gross_revenue,
  SUM(product_cost) AS total_material_cost,
  SUM(shipping_cost) AS total_shipping_cost,
  SUM(refund_amount) AS total_refunds_issued,
  COUNTIF(returned) AS total_returned_units
FROM `ecommerce_profitability_dw.raw_orders`
GROUP BY primary_category;
