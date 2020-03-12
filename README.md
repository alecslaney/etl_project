# etl_project

The file schema.sql can be run to generate all schemas needed for the postgres databases.

Once the schemas exist, there are three CSVs to upload into the tables.

States.csv just needs to be uploaded into its table with headers and a delimiter of “,”.

Both the other CSVs needed to be uploaded into their appropriate tables with “headers” enabled and a delimiter of “,”,

BUT within the “Columns” tab on top, “ID” needs to be manually removed from “Columns to import” or there will be an error.

Otherwise the CSVs will be uploaded without issue.

The file “2012 sql queries/cleanup.sql” can be run to clean and organize the 2012 data.

In the “2016 sql queries” folder, “county_township_cleanup.sql” needs to be run first to condense county/township data, and then “candidate_separate.sql” can be run to make the data mirror the format of the 2012 set.
