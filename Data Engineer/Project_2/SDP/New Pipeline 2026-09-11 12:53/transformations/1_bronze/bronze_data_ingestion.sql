CREATE OR REFRESH STREAMING TABLE holding_raw_sdp
TBLPROPERTIES (
  'delta.columnMapping.mode' = 'name'
)
AS SELECT * FROM STREAM read_files(
  "/Volumes/sdp_investment/bronze/raw_data/", :param_1
  format => "csv",
  header => true,
  inferSchema => true
);