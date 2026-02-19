-- Star Schema Creation for driiiportfolio
-- Target: BigQuery (Project ID: driiiportfolio)
-- Optimized for Partitioning on Date to reduce query costs


CREATE OR REPLACE TABLE `driiiportfolio.tvc_dataset.dim_counties` (
    county_fips STRING NOT NULL,
    county_name STRING,
    population INT64,
    match_tier_pct FLOAT64 -- Based on HB 114 population tiers
);

CREATE OR REPLACE TABLE `driiiportfolio.tvc_dataset.dim_veterans` (
    vet_id STRING NOT NULL,
    discharge_status STRING, -- Must be 'HONORABLE' per SAO 25-003 [3]
    dd214_on_file BOOLEAN,
    zip_code STRING,
    county_fips STRING
);

CREATE OR REPLACE TABLE `driiiportfolio.tvc_dataset.dim_organizations` (
    grant_id STRING NOT NULL,
    org_name STRING,
    program_type STRING, -- GEN, HTX, VMH, VTC [9]
    risk_level STRING -- HIGH, MED, LOW based on audit history [3]
);

CREATE OR REPLACE TABLE `driiiportfolio.tvc_dataset.fact_grant_performance` (
    submission_id STRING,
    grant_id STRING,
    date_key DATE,
    vets_served_count INT64,
    funds_expended FLOAT64,
    match_provided FLOAT64,
    report_submitted_at TIMESTAMP
)
PARTITION BY date_key
CLUSTER BY grant_id;
