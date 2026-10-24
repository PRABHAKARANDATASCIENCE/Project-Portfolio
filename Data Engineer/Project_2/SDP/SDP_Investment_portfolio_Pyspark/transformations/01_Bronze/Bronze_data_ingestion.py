from pyspark import pipelines as dp
from pyspark.sql import functions as F

@dp.table(
    name="bronze_holdings",
    comment="Raw data from the source system",
    table_properties={"delta.columnMapping.mode": "name"}
)
def bronze_holdings():
    return(
        spark.readStream
        .format("cloudFiles")
        .option("cloudFiles.format", "csv")
        .option("header","true")
        .option("cloudFiles.inferColumnTypes", "true")
        .load("/Volumes/sdp_investment_pyspark/bronze/raw_holding_data/")
        .withColumn("file_mod_time",F.col("_metadata.file_modification_time"))
    )