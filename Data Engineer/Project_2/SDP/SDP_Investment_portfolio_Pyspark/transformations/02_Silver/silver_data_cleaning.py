from pyspark import pipelines as dp
from pyspark.sql import functions as F
@dp.table(
    name="sdp_investment_pyspark.silver.silver_holding",
    comment="Cleaned and validated investment holdings"
)
def silver_data_cleaning():
     
     df = (
         spark.readStream
         .table("bronze_holdings")
         .select(
             F.upper(F.trim(F.col("Instrument"))).alias("instrument"),
             F.col("`Qty.`").cast("int").alias("qty"),
             F.col("`Avg. cost`").cast("decimal(10,2)").alias("avg_cost"),
             F.col("LTP").cast("decimal(10,2)").alias("ltp"),
             F.col("Invested").cast("decimal(10,2)").alias("invested"),
             F.col("`Cur. val`").cast("decimal(10,2)").alias("cur_val"),
             F.col("`P&L`").cast("decimal(10,2)").alias("p_and_l"),
             F.col("`Net chg.`").cast("decimal(10,2)").alias("net_chg"),
             F.col("`Day chg.`").cast("decimal(10,2)").alias("day_chg"),
             F.col("file_mod_time"),
             F.current_timestamp().alias("silver_table_time_stamp")
             )
         .withColumn("asset_class",F.when(F.lower(F.col("instrument")).rlike("(bond|sgb|sgl|mml|nfl|kfl)"),"BOND")
                     .when(F.lower(F.col("instrument")).rlike("(etf|bees|mon100)"),"ETF").otherwise("EQUITY")
                     )
         )
     return df.filter(F.col("instrument").isNotNull()
                      & (F.col("instrument") != "")
                      & F.col("avg_cost").isNotNull()
                      & (F.col("cur_val")>0)
                      & F.col("net_chg").isNotNull()
                      & (F.col("invested")> 0)
     )         
     dp.create_streaming_table("holding_silver_sdp")

     dp.create_auto_cdc_flow(
         target = "holding_silver_sdp",
         source = "silver_data_cleaning",
         keys = ["instrument"],
         sequence_by = F.col("file_mod_time"),
         stored_as_scd_type = 1
     )