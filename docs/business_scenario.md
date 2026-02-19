# **Business Scenario:** Grant Oversight & Modernization

**Agency:** Texas Veterans Commission (TVC)

**Date:** February 19, 2026

**Author:** Daniel Rodriguez III - Data Analyst III

**Budget Impact:** $46.3 Million (Annual Grant Awards)


### **1. The Context**

The TVC serves over 1.5 million veterans in Texas. As of early 2026, the agency has experienced a 53% increase in mental health funding and the consolidation of the TV+FA grant program via HB 114.

### **2. The Conflict (Trigger Events)**

* **Audit Failure:** State Auditor Report 25-003 identified that 3 out of 4 quarterly reports were late, and eligibility (DD Form 214) was not documented in multiple instances.

* **Logical Complexity:** HB 114 requires the agency to enforce a 25%, 50%, or 100% matching fund requirement based on county population tiers—a task current.csv systems cannot process.

### **3. Business Problem Statement**

TVC's reliance on manual spreadsheet tracking has created a "Reporting Bottleneck." This leads to:

1. Significant risk of state funding clawbacks.
2. Breach of statutory LBB deadlines (30-day reporting window).
3. Inability to identify "Service Deserts" in rural Texas.

### **4. Success Metrics (KPIs)**

* **LBB Reporting Timeliness:** Achieve 100% compliance with the 30-day reporting window.

* **Eligibility Verification Rate:** 100% documentation of "Honorable" discharge status via automated SQL flags.

* **Service Equity:** Identifying and filling gaps in service distribution through GIS spatial overlays.
