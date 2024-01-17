# Snowflake

Getting Started https://docs.snowflake.com/user-guide/getting-started-tutorial  
Quick tour https://docs.snowflake.com/user-guide/ui-snowsight-quick-tour  
Webinar 90 mins: https://www.snowflake.com/webinar/virtual-hands-on-labs/zero-to-snowflake-in-90-minutes-emea-4-october/  
Masterclass in Udemy: https://www.udemy.com/course/snowflake-masterclass/  

Getting Started https://docs.snowflake.com/user-guide/getting-started-tutorial  
Quick tour https://docs.snowflake.com/user-guide/ui-snowsight-quick-tour  


## SnowSQL
https://docs.snowflake.com/en/user-guide/snowsql  


## Connections 
https://docs.snowflake.com/en/user-guide/ecosystem-etl  


## System Setup
https://docs.snowflake.com/en/sql-reference/parameters


## Backup
* https://docs.snowflake.com/en/user-guide/data-time-travel
* ➕ cloned objects are independent of each other
* SELECT ... AT|BEFORE TIMESTAMP|OFFSET|STATEMENT
* CREATE ... CLONE ... AT|BEFORE https://docs.snowflake.com/en/sql-reference/sql/create-clone
* UNDROP TABLE|SCHEMA|DATABASE ...

    SHOW DATABASES HISTORY;

    CREATE OR REPLACE TABLE MyTable_V2 CLONE MyTable;

    CREATE SCHEMA mytestschema_clone_restore CLONE testschema BEFORE (TIMESTAMP => TO_TIMESTAMP(40*365*86400));



## Restore

### UNDROP
https://www.snowflake.com/blog/undrop-a-table-database-or-schema/
    UNDROP TABLE <tablename>;
    UNDROP SCHEMA <schema name>;
    UNDROP DATABASE <db name>;
