# Exasol performance

# DQL = SELECT
## JOIN 
* :star: avoid USING ()
* do JOIN on number fields, not on varchar
* avoid JOIN ON criteria with data transformation
* implement indexes with [DISTRIBUTE BY]() keyword
## HAVING
* HAVING → WHERE (filter early)




# DML = CREATE
## data types
* CHAR(20) better than VARCHAR(20)
* VARCHAR(20) better than VARCHAR(20000000)

# DDL = INSERT
* slower with indexes → avoid unused primary keys

