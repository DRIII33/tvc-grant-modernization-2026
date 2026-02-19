### **Deliverable Content: `docs/data_dictionary.md**`

# Data Dictionary: Grant Oversight Star Schema

### 1. Fact Table: `fact_grant_performance`

*Each row represents a monthly performance submission from a grantee.*

| Field Name | Data Type | Description |
| --- | --- | --- |
| `submission_id` | STRING | Unique ID for the monthly report. |
| `grant_id` | STRING | FK to `dim_organizations`. |
| `date_key` | DATE | FK to `dim_date`. |
| `vets_served_count` | INT64 | Total unduplicated veterans served in the month `[7]`. |
| `funds_expended` | FLOAT64 | Amount of TVC reimbursement requested. |
| `match_provided` | FLOAT64 | Non-state funds secured by the grantee. |
| `report_submitted_at` | TIMESTAMP | Used to calculate "Reporting Timeliness" against LBB deadlines `[3]`. |

### 2. Dimension Table: `dim_counties`

*Used to enforce HB 114 matching requirements.*

| Field Name | Data Type | Logic/Tier |
| --- | --- | --- |
| `county_fips` | STRING | Standardized Texas County code `[8]`. |
| `population` | INT64 | 2024/2025 Census estimates. |
| `tier_requirement` | FLOAT64 | Calculated: 0.25 (), 0.50 (), 1.0 () `[1]`. |

---
