CREATE OR REFRESH STREAMING TABLE sdp_investment.bronze.holding_raw_sdp
TBLPROPERTIES (
  'delta.columnMapping.mode' = 'name'
)
AS SELECT *,
  _metadata.file_name AS source_file,
  _metadata.file_modification_time AS file_mod_time
FROM STREAM read_files(
  "/Volumes/sdp_investment/bronze/raw_data/",
  format => "csv",
  header => true,
  inferSchema => true
);