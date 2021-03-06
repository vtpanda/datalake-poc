CREATE EXTERNAL TABLE IF NOT EXISTS hmda.hmda_lar_raw(
  action_taken string, 
  action_taken_name string, 
  agency_code string, 
  agency_abbr string, 
  agency_name string, 
  applicant_ethnicity string, 
  applicant_ethnicity_name string, 
  applicant_income_000s string, 
  applicant_race_1 string, 
  applicant_race_2 string, 
  applicant_race_3 string, 
  applicant_race_4 string, 
  applicant_race_5 string, 
  applicant_race_name_1 string, 
  applicant_race_name_2 string, 
  applicant_race_name_3 string, 
  applicant_race_name_4 string, 
  applicant_race_name_5 string, 
  applicant_sex string, 
  applicant_sex_name string, 
  application_date_indicator string, 
  as_of_year_dummyfield string, 
  census_tract_number string, 
  co_applicant_ethnicity string, 
  co_applicant_ethnicity_name string, 
  co_applicant_race_1 string, 
  co_applicant_race_2 string, 
  co_applicant_race_3 string, 
  co_applicant_race_4 string, 
  co_applicant_race_5 string, 
  co_applicant_race_name_1 string, 
  co_applicant_race_name_2 string, 
  co_applicant_race_name_3 string, 
  co_applicant_race_name_4 string, 
  co_applicant_race_name_5 string, 
  co_applicant_sex string, 
  co_applicant_sex_name string, 
  county_code string, 
  county_name string, 
  denial_reason_1 string, 
  denial_reason_2 string, 
  denial_reason_3 string, 
  denial_reason_name_1 string, 
  denial_reason_name_2 string, 
  denial_reason_name_3 string, 
  edit_status string, 
  edit_status_name string, 
  hoepa_status string, 
  hoepa_status_name string, 
  lien_status string, 
  lien_status_name string, 
  loan_purpose string, 
  loan_purpose_name string, 
  loan_type string, 
  loan_type_name string, 
  msamd string, 
  msamd_name string, 
  owner_occupancy string, 
  owner_occupancy_name string, 
  preapproval string, 
  preapproval_name string, 
  property_type string, 
  property_type_name string, 
  purchaser_type string, 
  purchaser_type_name string, 
  respondent_id string, 
  sequence_number string, 
  state_code string, 
  state_abbr string, 
  state_name string, 
  hud_median_family_income string, 
  loan_amount_000s string, 
  number_of_1_to_4_family_units string, 
  number_of_owner_occupied_units string, 
  minority_population string, 
  population string, 
  rate_spread string, 
  tract_to_msamd_income string)
PARTITIONED BY ( 
  as_of_year string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.OpenCSVSerde' 
WITH SERDEPROPERTIES ( 
  'quoteChar'='\"', 
  'separatorChar'=',') 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  's3://datalake-poc-data/feeds/hmda/hmda_lar/raw/csv/'
TBLPROPERTIES (
  'serialization.null.format'='', 
  'skip.header.line.count'='1'
);

CREATE EXTERNAL TABLE IF NOT EXISTS hmda.hmda_lar(
  action_taken int, 
  action_taken_name string, 
  agency_code int, 
  agency_abbr string, 
  agency_name string, 
  applicant_ethnicity int, 
  applicant_ethnicity_name string, 
  applicant_income_000s int, 
  applicant_race_1 int, 
  applicant_race_2 int, 
  applicant_race_3 int, 
  applicant_race_4 int, 
  applicant_race_5 int, 
  applicant_race_name_1 string, 
  applicant_race_name_2 string, 
  applicant_race_name_3 string, 
  applicant_race_name_4 string, 
  applicant_race_name_5 string, 
  applicant_sex int, 
  applicant_sex_name string, 
  application_date_indicator int, 
  census_tract_number string, 
  co_applicant_ethnicity int, 
  co_applicant_ethnicity_name int, 
  co_applicant_race_1 int, 
  co_applicant_race_2 int, 
  co_applicant_race_3 int, 
  co_applicant_race_4 int, 
  co_applicant_race_5 int, 
  co_applicant_race_name_1 string, 
  co_applicant_race_name_2 string, 
  co_applicant_race_name_3 string, 
  co_applicant_race_name_4 string, 
  co_applicant_race_name_5 string, 
  co_applicant_sex int, 
  co_applicant_sex_name string, 
  county_code int, 
  county_name string, 
  denial_reason_1 int, 
  denial_reason_2 int, 
  denial_reason_3 int, 
  denial_reason_name_1 string, 
  denial_reason_name_2 string, 
  denial_reason_name_3 string, 
  edit_status int, 
  edit_status_name string, 
  hoepa_status int, 
  hoepa_status_name string, 
  lien_status int, 
  lien_status_name string, 
  loan_purpose int, 
  loan_purpose_name string, 
  loan_type int, 
  loan_type_name string, 
  msamd string, 
  msamd_name string, 
  owner_occupancy int, 
  owner_occupancy_name string, 
  preapproval int, 
  preapproval_name string, 
  property_type int, 
  property_type_name string, 
  purchaser_type int, 
  purchaser_type_name string, 
  respondent_id int, 
  sequence_number string, 
  state_code int, 
  state_abbr string, 
  state_name string, 
  hud_median_family_income int, 
  loan_amount_000s int, 
  number_of_1_to_4_family_units int, 
  number_of_owner_occupied_units int, 
  minority_population decimal(5,2), 
  population int, 
  rate_spread decimal(5,2), 
  tract_to_msamd_income decimal(10,2))
PARTITIONED BY ( 
  as_of_year string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.ql.io.orc.OrcSerde' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat'
LOCATION
  's3://datalake-poc-data/feeds/hmda/hmda_lar/clean/orc/'
TBLPROPERTIES (
  'orc.compress'='snappy');


set hive.exec.dynamic.partition=true;
set hive.exec.dynamic.partition.mode=nonstrict;
set hive.mapred.mode=nonstrict;

msck repair table hmda.hmda_lar_raw; 

INSERT OVERWRITE TABLE hmda.hmda_lar partition (as_of_year) 
SELECT  action_taken, 
  action_taken_name, 
  agency_code, 
  agency_abbr, 
  agency_name, 
  applicant_ethnicity, 
  applicant_ethnicity_name, 
  applicant_income_000s, 
  applicant_race_1, 
  applicant_race_2, 
  applicant_race_3, 
  applicant_race_4, 
  applicant_race_5, 
  applicant_race_name_1, 
  applicant_race_name_2, 
  applicant_race_name_3, 
  applicant_race_name_4, 
  applicant_race_name_5, 
  applicant_sex, 
  applicant_sex_name, 
  application_date_indicator, 
  census_tract_number, 
  co_applicant_ethnicity, 
  co_applicant_ethnicity_name, 
  co_applicant_race_1, 
  co_applicant_race_2, 
  co_applicant_race_3, 
  co_applicant_race_4, 
  co_applicant_race_5, 
  co_applicant_race_name_1, 
  co_applicant_race_name_2, 
  co_applicant_race_name_3, 
  co_applicant_race_name_4, 
  co_applicant_race_name_5, 
  co_applicant_sex, 
  co_applicant_sex_name, 
  county_code, 
  county_name, 
  denial_reason_1, 
  denial_reason_2, 
  denial_reason_3, 
  denial_reason_name_1, 
  denial_reason_name_2, 
  denial_reason_name_3, 
  edit_status, 
  edit_status_name, 
  hoepa_status, 
  hoepa_status_name, 
  lien_status, 
  lien_status_name, 
  loan_purpose, 
  loan_purpose_name, 
  loan_type, 
  loan_type_name, 
  msamd, 
  msamd_name, 
  owner_occupancy, 
  owner_occupancy_name, 
  preapproval, 
  preapproval_name, 
  property_type, 
  property_type_name, 
  purchaser_type, 
  purchaser_type_name, 
  respondent_id, 
  sequence_number, 
  state_code, 
  state_abbr, 
  state_name, 
  hud_median_family_income, 
  loan_amount_000s, 
  number_of_1_to_4_family_units, 
  number_of_owner_occupied_units, 
  minority_population, 
  population, 
  rate_spread, 
  tract_to_msamd_income,
  as_of_year
from hmda.hmda_lar_raw;

msck repair table hmda.hmda_lar;
