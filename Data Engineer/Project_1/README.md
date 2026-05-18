# Instacart Data Engineering Pipeline (Medallion Architecture)

An end-to-end ELT data pipeline built on **Databricks** using **PySpark** and **Delta Lake** to process and analyze massive transactional retail datasets from Instacart. The project implements a modular 3-tier **Medallion Architecture** (Bronze, Silver, Gold) to convert raw, unstructured transactional logs into analytics-ready enterprise data structures.

## 🏗️ Architecture Overview

The system processes relational business entities across three distinct logical layers to guarantee data isolation, scalability, and quality enforcement.

1. **Bronze Layer (`Bronze_layer.ipynb`):** Simulates landing zone ingestion. Raw CSV files containing millions of grocery orders, product details, and aisle structures are read using Spark and converted into raw Delta Lake format, appending a processing timestamp for auditing.
2. **Silver Layer (`Silver_layer.ipynb`):** Handles data sanitization, schema enforcement, and relational joins. Missing tracking attributes (such as nulls in sequential order timelines) are dynamically imputed, and key dimensions (Products, Aisles, Departments) are joined to create an optimized, clean relational schema.
3. **Gold Layer:** Computes high-value business aggregates and metrics (such as top-selling products per department, order reorder velocities, and peak ordering time-frames) optimized for downstream BI tools like Power BI.

---

## 🛠️ Tech Stack & Core Concepts

- **Execution Engine:** PySpark (Spark SQL & DataFrames)
- **Environment:** Databricks Notebook Environment
- **Storage Layer:** Delta Lake (ACID Transactions, Schema Enforcement, Time-Travel)
- **Data Architecture:** Medallion Framework & Dimensional Modeling

---

## 🚀 Key Engineering Highlights

- **Imputation Logic:** Handled logical data anomalies in user histories (imputing business-specific `0` markers for first-time customers instead of dropping rows) ensuring 100% data preservation.
- **Transactional Safety:** Utilized Delta Lake tables over standard Parquet to provide ACID guarantees across concurrently executing notebook pipelines.
- **Modular Pipeline Design:** Decoupled individual extraction, clearing, and analytical processing steps into distinct scripts to minimize compute overhead during failures.

---

## 📊 Analytics & BI Deliverables (Gold Layer Insights)

The final Gold tables are explicitly modeled to answer key operational questions:
- Identification of high-churn grocery departments.
- Peak operational hour frequencies to optimize delivery logistics.
- Basket analysis metrics (Average Items Per Basket vs. Reorder Frequency).
