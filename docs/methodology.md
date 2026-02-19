## **Methodology:** Analytics & Remediation Strategy

This project utilizes a modern data-stack to remediate the vulnerabilities identified in SAO Report 25-003.

### **Phase 1: Data Architecture**
* **Environment:** Migration of fragmented.csv files into a centralized Google BigQuery environment (driiiportfolio).

* **Schema Design:** Implementation of a Star Schema to separate grant performance (Fact) from grantee and county demographics (Dimensions).

### **Phase 2: Automation & Validation**
* **SQL Logic:** Implementation of CASE statements to automate the HB 114 population-based match tiers.

**Python Scripts:** Development of data cleaning pipelines to standardize discharge status codes and identify missing DD-214 flags.

### **Phase 3: Spatial Analysis & Storytelling**
* **GIS Integration:** Using spatial overlays to map grant distribution against veteran density.

* **Visualization:** Executive dashboards in Looker Studio designed for LBB and TVC Leadership briefings.
