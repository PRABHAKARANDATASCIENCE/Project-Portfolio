CREATE OR REFRESH STREAMING TABLE holding_silver_sdp
AS
SELECT 
  UPPER(TRIM(Instrument)) AS instrument,
  CAST(`Qty.` AS INT) AS qty,
  CAST(`Avg. cost` AS decimal) AS avg_cost,
  CAST(LTP AS decimal) AS ltp,
  CAST(Invested AS decimal) AS invested,
  CAST(`Cur. val` AS decimal) AS cur_val,
  CAST(`P&L` AS decimal) AS p_and_l,
  CAST(`Net chg.` AS decimal) AS net_chg,
  CAST(`Day chg.` AS decimal) AS day_chg,
  current_timestamp() AS silver_table_time_stamp
FROM STREAM holding_raw_sdp
WHERE Instrument is not null and cast(`Avg. cost` as decimal) is not null
and cast(`Cur. val` as decimal) > 0 and cast(`Net chg.` as decimal) is not null
and cast(Invested as decimal) > 0;