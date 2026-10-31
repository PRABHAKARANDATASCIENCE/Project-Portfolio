# Databricks notebook source
# /// script
# [tool.databricks.environment]
# environment_version = "6"
# ///
# MAGIC %sql
# MAGIC Create schema sdp_investment_pyspark.silver;

# COMMAND ----------

# MAGIC %sql
# MAGIC Create Schema sdp_investment_pyspark.gold

# COMMAND ----------

# MAGIC %sql
# MAGIC select * from sdp_investment_pyspark.bronze.bronze_holdings;

# COMMAND ----------

# MAGIC %sql
# MAGIC SELECT * FROM sdp_investment_pyspark.silver.silver_holding;

# COMMAND ----------

# MAGIC %sql
# MAGIC select * from sdp_investment_pyspark.silver.holding_silver_sdp;

# COMMAND ----------

