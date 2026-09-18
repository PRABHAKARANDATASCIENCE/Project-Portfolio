CREATE OR REFRESH STREAMING TABLE sdp_investment.silver.holding_silver_sdp;

APPLY CHANGES INTO sdp_investment.silver.holding_silver_sdp
FROM (
SELECT 
  UPPER(TRIM(Instrument)) AS instrument,
  CAST(`Qty.` AS INT) AS qty,
  CAST(`Avg. cost` AS DECIMAL(10,2)) AS avg_cost,
  CAST(LTP AS DECIMAL(10,2)) AS ltp,
  CAST(Invested AS DECIMAL(10,2)) AS invested,
  CAST(`Cur. val` AS DECIMAL(10,2)) AS cur_val,
  CAST(`P&L` AS DECIMAL(10,2)) AS p_and_l,
  CAST(`Net chg.` AS DECIMAL(10,2)) AS net_chg,
  CAST(`Day chg.` AS DECIMAL(10,2)) AS day_chg,
  case 
  when lower(Instrument) rlike "(bond|sgb|sgl|mml|nfl|kfl)" then "BOND"
  when lower(Instrument) rlike "(etf|bees|mon100)" then "ETF"
  else "EQUITY"
  end as asset_class,
  current_timestamp() AS silver_table_time_stamp,
  file_mod_time
FROM STREAM(sdp_investment.bronze.holding_raw_sdp)
WHERE instrument is not null and cast(`Avg. cost` as DECIMAL(10,2)) is not null
and cast(`Cur. val` as DECIMAL(10,2)) > 0 and cast(`Net chg.` as DECIMAL(10,2)) is not null
and cast(Invested as decimal) > 0
)
KEYS (instrument)
SEQUENCE BY file_mod_time;
-- silver dividend
CREATE OR REFRESH STREAMING TABLE sdp_investment.silver.dividend_silver_sdp;

APPLY CHANGES INTO sdp_investment.silver.dividend_silver_sdp
FROM (
SELECT 
  UPPER(TRIM(Symbol)) AS instrument,
  CAST(Qty AS INT) AS qty,
  CAST(`Dividend per share` AS DECIMAL(10,2)) AS dividend_per_share,
  CAST(`Total dividend` AS DECIMAL(10,2)) AS total_dividend,
  CAST(`Ex-date` AS DATE) AS ex_date,
  CONCAT(
    UPPER(TRIM(Symbol)),'_',
    CAST(`Ex-date` AS string),'_',
    CAST(`Dividend per share` AS STRING)
  ) AS dividend_id,
  current_timestamp() AS silver_table_time_stamp,
  file_mod_time
  from STREAM(sdp_investment.bronze.dividend_raw_sdp)
  WHERE Symbol is not null and cast(`Dividend per share` as DECIMAL(10,2)) is not null
  and cast(`Total dividend` as DECIMAL(10,2)) > 0
  )
  KEYS (dividend_id)
  SEQUENCE BY file_mod_time;

