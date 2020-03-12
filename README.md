# etl_project
ReadMe:

The file schema.sql can be run to generate all schemas needed for the postgres databases. 
Once the schemas exist, there are three CSVs to upload into the tables.
States.csv just needs to be uploaded into its table with headers and a delimiter of “,”. 
Both the other CSVs needed to be uploaded into their appropriate tables with “headers” enabled and a delimiter of “,”, 
BUT within the “Columns” tab on top, “ID” needs to be manually removed from “Columns to import” or there will be an error. 
Otherwise the CSVs will be uploaded without issue.
The file “2012 sql queries/cleanup.sql” can be run to clean and organize the 2012 data. 
In the “2016 sql queries” folder, “county_township_cleanup.sql” needs to be run first to condense county/township data, and then “candidate_separate.sql” can be run to make the data mirror the format of the 2012 set.
 






















































































ERM
We plan to utilize Postgres/S

DATA:
The type of transformation needed for this data (cleaning, joining, filtering, aggregating, etc).


The type of final production database to load the data into (relational or non-relational).


The final tables or collections that will be used in the production database.



Project Report
At the end of the week, your team will submit a Final Report that describes the following:
Extract: your original data sources and how the data was formatted (CSV, JSON, pgAdmin 4, etc).


Transform: what data cleaning or transformation was required.


Load: the final database, tables/collections, and why this was chosen.


Please upload the report to Github and submit a link to Bootcampspot.

Copyright
Coding Boot Camp © 2019. All Rights Reserved.

