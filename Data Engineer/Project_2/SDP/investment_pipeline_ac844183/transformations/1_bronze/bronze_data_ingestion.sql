CREATE OR REFRESH STREAMING TABLE sdp_investment.bronze.holding_raw_sdp
TBLPROPERTIES (
  'delta.columnMapping.mode' = 'name'
)
AS SELECT * FROM STREAM read_files(
  "/Volumes/sdp_investment/bronze/raw_data/",
  format => "csv",
  header => true,
  inferSchema => true
);