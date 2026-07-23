# BigQuery E-Commerce Gross-to-Net Profitability Engine

A cloud-based e-commerce intelligence engine built to eliminate revenue leakage. It uses BigQuery analytics to audit data pipeline integrity, isolate margin compression drivers, and optimize marketing capital efficiency — turning raw transaction, marketing, and cost data into a single "gross revenue → net profit" view.

**Live dashboard:** [Looker Studio Report](https://datastudio.google.com/reporting/5afa64d6-ca1f-413b-9f54-78025f0bcf03)
**Project write-up:** [Notion Page](https://app.notion.com/p/BigQuery-E-Commerce-Gross-to-Net-Profitability-Engine-Marketing-ROI-Optimizer-396ef3c0ef9080c6946ac3e75730ee67?source=copy_link)

## Overview

Most e-commerce reporting stops at gross revenue, masking where profit is actually being lost — promotional discounts, marketplace platform fees, and inefficient ad spend. This project builds a BigQuery-based pipeline and a 3-page Looker Studio dashboard that traces the full path from **gross revenue to net corporate profit**, and pinpoints exactly which channels, months, and cost categories are eroding margin.

## Dashboard Pages

### 1. Executive Summary
High-level health check across the business:
- Total transaction volume, AOV, blended gross revenue, net profit margin, net corporate profit
- Gross revenue share by channel (Website, Mobile App, Marketplace, Social Commerce)
- Monthly net profit vs. gross revenue trajectory
- Product inventory unit economics (gross revenue, material cost, shipping cost, return rate by category)
- Omnichannel profit vs. platform overhead by channel
  ![...]
  ![Executive Summary](images/Executive%20Summery.png)

### 2. Marketing ROI
Evaluates marketing capital efficiency:
- Blended ROAS, total spend, total revenue, total store orders
- Sales volume by conversion channel
- Ad platform performance breakdown (spend, revenue, blended ROAS by platform: Google, Facebook, Influencer, Instagram, TikTok, Email)
- Monthly ROAS trajectory per platform
   ![...]
  ![Marketing ROI](images/Marketing%20ROI.png)

### 3. Margin Killers
Isolates the specific drivers of margin compression:
- Discount leak rate, platform fee burden, total platform fees, total discounts given, net profit margin
- Promotional discount share by channel
- Channel margin erosion matrix (gross revenue, discounts, platform fees, net profit by channel)
- Chronological profit compression timeline (gross revenue, discounts, platform fees, net profit over time)
 ![...]
  ![Margin Killers](images/Margin%20Killers.png)

## Tech Stack

- **Data warehouse:** Google BigQuery (SQL views for aggregation and metric logic)
- **Data quality:** Automated pipeline integrity / data quality logging
- **Visualization:** Looker Studio
- **Documentation:** Notion

## Repository Structure

```
.
├── data/                # Source / staging data
├── data_quality_logs/   # Pipeline integrity and data quality audit logs
└── sql/
    └── views/            # BigQuery SQL views powering the dashboard metrics
```

## Key Metrics Tracked

| Metric | Description |
|---|---|
| Blended Gross Revenue | Total revenue across all channels before deductions |
| Net Corporate Profit | Profit after discounts, platform fees, and costs |
| Net Profit Margin | Net profit as a % of gross revenue |
| Discount Leak Rate | Share of revenue lost to promotional discounts |
| Platform Fee Burden | Share of revenue consumed by marketplace/platform fees |
| Blended ROAS | Return on ad spend across all marketing platforms |
| Channel Margin Erosion | Per-channel breakdown of discounts, fees, and resulting net profit |

## How It Works

1. **Ingest** raw transaction, marketing spend, and cost data into BigQuery (`data/`).
2. **Validate** pipeline integrity with automated data quality checks (`data_quality_logs/`).
3. **Model** the gross-to-net waterfall using SQL views (`sql/views/`) — layering in discounts, platform fees, shipping, and material costs on top of gross revenue.
4. **Visualize** the results in a 3-page Looker Studio dashboard for executive, marketing, and margin-analysis audiences.

## Author

**Shuvro Sankar** ([@ShuvroSankar](https://github.com/ShuvroSankar))
