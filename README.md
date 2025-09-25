# Oracle Cloud HCM Extracts Extracting Jobs

This repository provides a straightforward example demonstrating how to create an **HCM Extract** in Oracle Cloud HCM to generate a report listing all job names and codes configured within HCM Cloud.

## Overview

The extract leverages two **User Entities** to retrieve job-related information:

- **PER_EXT_JOB_FAMILY_UE**
```sql
SELECT * 
  FROM per_job_family_f_vl jobfam 
 WHERE TRUNC(&B1) BETWEEN jobfam.effective_start_date AND jobfam.effective_end_date
```

- **PER_EXT_SEC_JOB_UE**
```sql
SELECT * 
  FROM per_job_secured_list_v job 
 WHERE TRUNC(&B1) BETWEEN effective_start_date AND effective_end_date
```

These queries can also be accessed via the Oracle Cloud interface under:
Navigator > Data Exchange > View User Entities

Note: Based on experience, the search functionality on this page may not always be reliable.
As an alternative, you can retrieve the User Entity definitions using the following SQL query by substituting <UserEntityName>:
```
SELECT fue.user_entity_name,
       fr.text
  FROM fusion.ff_user_entities fue,
       fusion.ff_routes fr
 WHERE fue.route_id = fr.route_id
   AND fue.user_entity_name = '<UserEntityName>'
```

## Provided Files

This repository includes:

1. **HCM Extract Definition (XML)** – ready for import into Oracle Cloud  
2. **OTBI Templates** in multiple formats to generate reports:  
   - RTF  
   - XSL  
   - Excel  
3. **Sample job data extraction** from Oracle Cloud

---

## Testing OTBI Templates

To preview or test the OTBI templates, use the **Oracle BI Publisher Template Viewer**, which can be downloaded from the **OTBI Home Page** within Oracle Cloud.



