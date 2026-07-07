CREATE OR REPLACE VIEW `ecommerce_profitability_dw.vw_marketing_efficiency_timeline` AS
SELECT 
  month,
  platform,
  SUM(spend) AS total_spend,
  SUM(revenue_attributed) AS total_revenue,
  SUM(clicks) AS total_clicks,
  SUM(conversions) AS total_conversions
FROM `ecommerce_profitability_dw.raw_marketing_spend`
GROUP BY month, platform;
