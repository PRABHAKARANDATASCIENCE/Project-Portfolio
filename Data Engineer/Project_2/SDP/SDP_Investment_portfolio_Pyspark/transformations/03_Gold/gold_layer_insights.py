from pyspark import pipelines as dp
from pyspark.sql import functions as F

@dp.table(
    name= "sdp_investment_pyspark.gold.gold_holdings",
    comment= "Gold table for holding information"
)
def gold_portfolio_holdings():
    return(
        spark.table("sdp_investment_pyspark.silver.holding_silver_sdp")
        .groupBy("asset_class","instrument","qty")
        .agg(F.sum("invested").alias("total_invested_value"),
             F.sum("cur_val").alias("total_current_value"),
             F.sum("p_and_l").alias("total_p_and_l")
             )
        .withColumn("total_unrealized_pnl_pct",F.coalesce(
            F.round(
                F.col("total_p_and_l")/F.when(F.col("total_invested_value")==0,None).otherwise(F.col("total_invested_value"))*100,2
            ),
                    F.lit(0.0)
                    )
    ).orderBy(F.col("total_current_value").desc())
    )