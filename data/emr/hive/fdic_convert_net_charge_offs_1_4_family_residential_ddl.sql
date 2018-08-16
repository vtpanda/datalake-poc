CREATE external table fdic_net_charge_offs_1_4_family_residential_raw (
cert String,
docket String,
fed_rssd String,
rssdhcr String,
name String,
city String,
stalp String,
zip String,
repdte String,
rundate String,
bkclass String,
address String,
namehcr String,
offdom String,
offfor String,
stmult String,
specgrp String,
subchaps String,
county String,
cbsa_metro String,
cbsa_metro_name String,
estymd String,
insdate String,
effdate String,
mutual String,
parcert String,
trust String,
regagnt String,
insagnt1 String,
fdicdbs String,
fdicsupv String,
fldoff String,
fed String,
occdist String,
otsregnm String,
offoa String,
cb String,
inst_webaddr String,
ntreres String,
NTRERSFM String,
NTRERSF2 String,
ntreloc String)
PARTITIONED BY (
report_date string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",", "quoteChar" = "\"" )
location 's3://datalake-poc-data/feeds/fdic/net_charge_offs_1_4_family_residential/raw/csv/'
tblproperties ("skip.header.line.count"="1");


CREATE external table fdic_net_charge_offs_1_4_family_residential (
cert String,
docket String,
fed_rssd String,
rssdhcr String,
name String,
city String,
stalp String,
zip String,
repdte String,
rundate String,
bkclass String,
address String,
namehcr String,
offdom String,
offfor String,
stmult String,
specgrp String,
subchaps String,
county String,
cbsa_metro String,
cbsa_metro_name String,
estymd String,
insdate String,
effdate String,
mutual String,
parcert String,
trust String,
regagnt String,
insagnt1 String,
fdicdbs String,
fdicsupv String,
fldoff String,
fed String,
occdist String,
otsregnm String,
offoa String,
cb String,
inst_webaddr String,
ntreres String,
NTRERSFM String,
NTRERSF2 String,
ntreloc String)
PARTITIONED BY (
report_date string)
STORED AS ORC
LOCATION 's3://datalake-poc-data/feeds/fdic/net_charge_offs_1_4_family_residential/clean/orc'
tblproperties ("orc.compress"="ZLIB");
