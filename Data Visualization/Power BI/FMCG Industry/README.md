
# Sales Analytics for FMCG company

A brief description of what this project does and who it's for

## Introduction to FMCG Sales Report Dashboard in Power BI

Welcome to our FMCG Sales Report Dashboard, powered by Power BI! In today's fast-paced consumer goods industry, data-driven insights are essential for making informed decisions and staying ahead of the competition. Our interactive dashboard provides a comprehensive overview of sales performance, trends, and key metrics, allowing you to optimize your sales strategies and drive business growth.

## Purpose of the Dashboard:
The primary purpose of our FMCG Sales Report Dashboard is to empower stakeholders at all levels of the organization with actionable insights derived from sales data. Whether you're a sales manager tracking performance, a marketing executive identifying growth opportunities, or a business analyst analyzing market trends, this dashboard provides the information you need to make informed decisions and drive results.


## Dashboard Components and Navigation:

[The Overview of the Dashboard is split into Three Dashboard includes](https://linktodocumentation)
- Key Insights
- Profit Analysis
- Performance Insights

## Data Sources, Cleaning Data and ETL
- Data has been imported from the database and done data modeling to get intractive Dashboard
- Steps taken for Cleaning
    - In **Sales markets** table cleaned null value found in **Zone** Column
    - In **Sales transaction** table remove value which is 0 and negative values in **Sales amount** Column
    - In **Sales transaction** table created new column **(norm_sales_amount)** to convert USD amount to INR amount for further Analysis

## Key Metrics and KPIs:

Created KPI by Revenue, Sales Quantity, Total Profit Margin
- **Revenue** help the viewer to analyse how much Total Revenue gendrating
- **Sales Quantity** Show how much sales Quantity has done
- **Total Profit margin** Show how much total Profit margin is getting
- Added year filter slicer card to switch between the years and months given in top right corner


## Key insights Dashboard (1)

**Revenue by market**
![App Screenshot](https://github.com/PRABHAKARANDATASCIENCE/Project-Portfolio/blob/main/Data%20Visualization/Power%20BI/FMCG%20Industry/Revenue%20by%20market.PNG?raw=true)
**Sales Quantity by market**
![App Screenshot](https://github.com/PRABHAKARANDATASCIENCE/Project-Portfolio/blob/main/Data%20Visualization/Power%20BI/FMCG%20Industry/Sales%20quantity%20by%20market.PNG?raw=true)
**Trend of Revenue**
![App Screenshot](https://github.com/PRABHAKARANDATASCIENCE/Project-Portfolio/blob/main/Data%20Visualization/Power%20BI/FMCG%20Industry/Trend%20of%20Revenue.PNG?raw=true)
**Types of Customer**
![App Screenshot](https://github.com/PRABHAKARANDATASCIENCE/Project-Portfolio/blob/main/Data%20Visualization/Power%20BI/FMCG%20Industry/Types%20of%20Customer.PNG?raw=true)
**Top 5 Product**
![App Screenshot](https://github.com/PRABHAKARANDATASCIENCE/Project-Portfolio/blob/main/Data%20Visualization/Power%20BI/FMCG%20Industry/Top%205%20Products.PNG?raw=true)

## Profit Analysis (2)
**Profit Margin**

Dax function for Profit margin

```bash
  Profit margin = DIVIDE([Total profit margin],[Revenue],0)
  ```

![App Screenshot](https://github.com/PRABHAKARANDATASCIENCE/Project-Portfolio/blob/main/Data%20Visualization/Power%20BI/FMCG%20Industry/Profit%20Margin.PNG?raw=true)
**Revenue Contribution**

Dax function for Revenue Contribution

```bash
  Revenue contribution = DIVIDE([Revenue],CALCULATE([Revenue],ALL('sales products'),ALL('sales customers'),ALL('sales markets')))
  ```
![App Screenshot](https://github.com/PRABHAKARANDATASCIENCE/Project-Portfolio/blob/main/Data%20Visualization/Power%20BI/FMCG%20Industry/Revenue%20Contribution.PNG?raw=true)
**Profit Contribution by market**

Dax function for Profit Contribution by market

```bash
  Profit margin contribution % = DIVIDE([Total profit margin],CALCULATE([Total profit margin],all('sales products'),ALL('sales customers'),ALL('sales markets')))
  ```
![App Screenshot](https://github.com/PRABHAKARANDATASCIENCE/Project-Portfolio/blob/main/Data%20Visualization/Power%20BI/FMCG%20Industry/Profit%20margin%20contribution.PNG?raw=true)


## Performance insights (3)

**Profit by Zone**
![App Screenshot](https://github.com/PRABHAKARANDATASCIENCE/Project-Portfolio/blob/main/Data%20Visualization/Power%20BI/FMCG%20Industry/Profit%20by%20Zone.PNG?raw=true)
**Profit by market name**
![App Screenshot](https://github.com/PRABHAKARANDATASCIENCE/Project-Portfolio/blob/main/Data%20Visualization/Power%20BI/FMCG%20Industry/Profit%20by%20market%20name.PNG?raw=true)
**Revenue trend compared with last year**
![App Screenshot](https://github.com/PRABHAKARANDATASCIENCE/Project-Portfolio/blob/main/Data%20Visualization/Power%20BI/FMCG%20Industry/Revenue%20Trend%20comparing%20with%20previews%20year.PNG?raw=true)
## Interactive Features and Filters:

### The overview of my 3 Interactive dashboard

**Key Insights**
![App Screenshot](https://github.com/PRABHAKARANDATASCIENCE/Project-Portfolio/blob/main/Data%20Visualization/Power%20BI/FMCG%20Industry/download%20(1).png?raw=true)
**Profit Analysis**
![App Screenshot](https://github.com/PRABHAKARANDATASCIENCE/Project-Portfolio/blob/main/Data%20Visualization/Power%20BI/FMCG%20Industry/download%20(2).png?raw=true)
**Performance Insights**
![App Screenshot](https://github.com/PRABHAKARANDATASCIENCE/Project-Portfolio/blob/main/Data%20Visualization/Power%20BI/FMCG%20Industry/download%20(3).png?raw=true)

- These dashboard have Interactive Filters and slicers and it will reflect as per our click
- It will show the company profit,review and profit margin 